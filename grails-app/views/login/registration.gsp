<meta name="layout" content="public"/>


<div class="container">
    <g:form id="login" controller="login" action="doRegistration">
        <div class="logo">
            %{--<div class="alert alert-block alert-danger hidden"></div>--}%
            <asset:image width="" height="30" src="client-logo.png" />
        </div>

        <g:render template="/user/form"/>

        <button type="submit" id="registration" name="registration" class="btn btn-primary btn-block">Registration</button>
        <a href="/login/login" class="btn btn-primary btn-block">Back to Login</a>
    </g:form>
</div>



<style type="text/css" media="screen">
/* Display Center */
.container {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}
.container > div {
    flex: 0 0 auto;
}

div .logo {
    margin: 0px 0px 30px 0px; /* top, right, bottom, left */
}
.form-control {
    border-radius: 0px !important;
}
.btn-primary{
    background-color:#383838;
    border-radius:0px !important;
}
</style>