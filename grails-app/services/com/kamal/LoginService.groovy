package com.kamal

class LoginService {

    private static final String AUTHORIZED = "AUTHORIZED"

    //It is used to set User object for session and authorization
    def setUserAuthorization(User user) {
        def authorization = [isLoggedIn: true, user: user]
        AppUtil.getAppSession()[AUTHORIZED] = authorization
    }

    //Checking username and password
    def doLogin(String email, String password){
        password = password.encodeAsMD5()
        User user = User.findByEmailAndPassword(email, password)
        if (user){
            setUserAuthorization(user)
            return true
        }
        return false
    }

    //It is used for that user to authenticated/registered for accessing power
    boolean isAuthenticated(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        if (authorization && authorization.isLoggedIn){
            return true
        }
        return false
    }

    //It is use to get User object from session
    def getUser(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        return authorization?.user
    }


    def getUserName(){
        def user = getUser()
        return "${user.firstName} ${user.lastName}"
    }

    //For checking you are a regular or admin user/user
    def isAdministratorUser(){
        def user = getUser()
        if (user && user.userType == GlobalConfig.USER_TYPE.ADMINISTRATOR){
            return true
        }
        return false
    }

}
