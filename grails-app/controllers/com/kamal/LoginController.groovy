package com.kamal

class LoginController {

    LoginService loginService
    UserService userService

    def login() {
        if (loginService.isAuthenticated()) {
            redirect(controller: "home", action: "index")
        }
    }


    def doLogin() {
        if (loginService.doLogin(params.email, params.password)) {
            redirect(controller: "home", action: "index")
        } else {
            flash.message = AppUtil.infoMessage("Email address or Password not valid.", false) //Display alert message
            redirect(controller: "login", action: "login")
        }
    }


    def logout() {
        session.invalidate()
        redirect(controller: "login", action: "login")
    }

    //=============================================| For registration
    def registration() {
        [user: flash.redirectParams]
    }
    def doRegistration() {
        def response = userService.saveData(params)
        if (response.isSuccess) {
            loginService.setUserAuthorization(response.model)
            redirect(controller: "home", action: "index")
        } else {
            flash.redirectParams = response.model
            redirect(controller: "login", action: "registration")
        }
    }

}
