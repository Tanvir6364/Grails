<%--
  Created by IntelliJ IDEA.
  User: Tanvir
  Date: 01-Dec-19
  Time: 2:29 AM
--%>

<meta name="layout" content="public"/>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">
                    <h1 class="text-center login-title">Login</h1>
                    <div class="account-wall">
                        <g:img dir="images" file="bitmascot.png" class="profile-img"/>
                        <g:form controller="authentication" action="doLogin" class="form-signin">
                            <g:textField name="email" class="form-control" placeholder="Email" required="required" />
                            <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                            <g:submitButton class="btn btn-lg btn-success btn-block" name="login" value="Login"/>
                            <g:link controller="authentication" action="registration" class="btn btn-lg btn-info btn-block">Member Registration</g:link>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>