package userportal

import com.emad.app.AppInitializationService


class BootStrap {

    def init = { servletContext ->
        AppInitializationService.initialize()
    }

    def destroy = {
    }
}

