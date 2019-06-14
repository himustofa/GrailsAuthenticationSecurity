package com.kamal

class CustomTagLib {

    static namespace = "CustomTagLib"

    //Groovy Closure like Java Lambda Expression
    //http://www.hmtmcse.com/java/grails/tag-lib
    def renderErrorMessage = { attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage? g.message(code: attrs.errorMessage): g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)){
            out << "<small class='form-text text-danger''><strong>${errorMessage}</strong></small>"
        }
    }

    LoginService loginService

    //For showing logout button in header portion | it must be check user is logged-in/authenticated?
    def userActionMenu = { attrs, body ->
        //out << g.link(){authenticationService.getMemberName()}
        out << '<a href="/login/logout">Log Out</a>'

        /*out << '<div class="dropdown">'
        out << '<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><span class="caret"></span></button>'
        out << '<ul class="dropdown-menu">'
        out << '<li><a href="/authentication/logout">Log Out</a></li>'
        out << '</ul>'*/

        //out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getMemberName()}
        //out << g.link(controller: "authentication", action: "logout", class: "dropdown-item"){g.message(code:"logout")}
    }

}
