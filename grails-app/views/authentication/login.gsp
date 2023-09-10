
<meta name="layout" content="public"/>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">
                    <h1 class="text-center login-title">Login Panel</h1>
                    <div class="account-wall">
                        <g:img dir="images" file="grails.svg" class="profile-img"/>
                        <g:form controller="authentication" action="doLogin" class="form-signin">
                            <g:textField name="email" class="form-control" placeholder="Email" required="required" />
                            <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                            <g:submitButton class="btn btn-lg btn-primary btn-block" name="login" value="Login"/>

                            <div class ="container">
                                <div class="row justify-content-lg-center">

                                <div class="row">
                                    <div class=".col-10 .col-md-5"><div class="text-center">Are you new here? </div>
                                    </div>
                                    <div class=".col-12 .col-md-5 " style="margin-left: 5px"><g:link  controller="authentication" action="registration" >Register Now</g:link>
                                    </div>
                                </div>

                                </div>



                            </div>
                        </g:form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>