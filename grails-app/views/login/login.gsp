<meta name="layout" content="public"/>

<div class="container">

    <g:form id="login" controller="login" action="doLogin">

        <div class="logo">
            %{--<div class="alert alert-block alert-danger hidden"></div>--}%
            <asset:image width="" height="30" src="client-logo.png" />
        </div>

        <div class="form-group">
            <input type="email" id="email" name="email" required class="form-control"  value="" placeholder="Enter your email">
            %{--<input type="text" id="user" name="user" required class="form-control" placeholder="Enter username" />--}%
        </div>

        <div class="form-group">
            <input type="password" id="password" name="password" required class="form-control" placeholder="Enter your password" />
        </div>

        <button type="submit" id="login" name="login" class="btn btn-primary btn-block">Login Now</button>
        <a href="/login/registration" class="btn btn-primary btn-block">Registration</a>

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