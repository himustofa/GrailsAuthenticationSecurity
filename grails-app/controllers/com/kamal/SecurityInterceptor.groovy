package com.kamal


/*
Grails Interceptor:
A interceptor is responsible intercepting incoming web requests and performing actions such as authentication, logging and so on.
*/

class SecurityInterceptor {

    LoginService loginService

    //Constructor:
    SecurityInterceptor() {
        matchAll().excludes(controller: "login")
    }

    //For checking member/user is authenticated or nor?
    boolean before() {
        if (!loginService.isAuthenticated()) {
            redirect(controller: "login", action: "login")
            return false
        }
        return true
    }

    /*boolean before() { true }

    boolean after() { true }

    void afterView() {
        // no-op
    }*/
}
