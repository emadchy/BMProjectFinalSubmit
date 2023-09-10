package com.emad.app


class MemberInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorMember()){
            return true
        }
        flash.message = AppUtil.infoMessage("You are not an admin.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}
