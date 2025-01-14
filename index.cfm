<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

<style>
    .p-inputtext {
        padding: 10px;
        border: 1px solid #cbd5e1;
        border-radius: 4px;
        color: #334155;
        margin-left: 4px;
    }

    .p-inputtext:enabled:hover {
        border-color: #94a3b8;
    }

    .section {
        width: 900px;
        margin: 0 auto;
    }

    .section {
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        /*min-height: 100vh;*/
    }

    .links {
        position: relative;
        width: 100%;
        /*display: flex;
        justify-content: space-between;*/
    }

    .text-capitalize {
        text-transform: uppercase;
    }

    .topped {
        margin: 0 auto;
        margin-top: 0px;
        width: 220px;
    }
</style>
<link href="./vendor/font-awsome2/css/all.min.css" rel="stylesheet">
<link href="./style/style.css" rel="stylesheet">

    <style>
<cfinclude template="./style/style.css" />
    </style>
</head>
<body>
    
    <div class="section">
        <div class="col-lg-5 mb-lg-auto">
            <div class="card border-0 shadow bg-secondary">
                <div class="card-body px-lg-5 py-lg-5">
                    <div class="text-center text-muted mb-4">
                        <small>Sign in with credentials</small>
                    </div>
                    <form role="form" action="processForm.cfm" method="post" id="form1">
                        <div class="form-group input-group input-group-alternative">
                            <div class="input-group-prepend">
                                <span class="input-group-textx">
                                    <i class="fas fa-user"></i>
                                </span>
                            </div>
                            <input
                                aria-describedby="addon-right addon-left"
                                placeholder="Username"
                                id="username"
                                name="username"
                                required
                                class="form-control"
                            />
                        </div>
                        <div class="form-group input-group input-group-alternative">
                            <div class="input-group-prepend">
                                <span class="input-group-textx">
                                    <i class="fab fa-expeditedssl"></i>
                                </span>
                            </div>
                            <input
                                aria-describedby="addon-right addon-left"
                                type="password"
                                placeholder="Password"
                                id="password"
                                name="password"
                                required
                                class="form-control"
                            />
                        </div>
    
                        <div class="custom-control custom-checkbox">
                            <input
                                id="rememberMe" 
                                name="rememberMe"
                                type="checkbox"
                                class="custom-control-input"
                            />
                            <!---<label for="rememberMe" class="custom-control-label">
                                Remember me
                            </label>--->
                        </div>
    
                        <div class="text-center">
                            <button
                                type="submit"
                                form="form1"
                                value="Submit"
                                class="btn my-4 btn-primary"
                            >
                                Sign In
                            </button>
                            <!---<div class="links">
                                <a href="register.cfm" class="text-muted text-capitalize">Register</a>
                            </div>--->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

</body>
</html>


