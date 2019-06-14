package com.kamal


class UserInterceptor {

    LoginService loginService

    boolean before() {
        if (loginService.isAdministratorUser()){
            return true
        }
        flash.message = AppUtil.infoMessage("You are not Authorized for this Action.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}
