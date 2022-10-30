<?php
ob_start();
session_start();
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));

include "./konfigurasi/config.php";

if ($_SESSION['user']) {
    header("location:index.php");
} else {

?>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <title>Login</title>
        <!-- GLOBAL MAINLY STYLES-->
        <link href="./assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="./assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
        <!-- THEME STYLES-->
        <link href="assets/css/main.css" rel="stylesheet" />
        <!-- PAGE LEVEL STYLES-->
        <link href="./assets/css/pages/auth-light.css" rel="stylesheet" />
    </head>

    <body class="bg-silver-300">
        <div class="content">
            <div class="brand">
                <a class="link" href="login.php">AdminCAST</a>
            </div>
            <form id="login-form" method="post">
                <h2 class="login-title">Log in</h2>
                <div class="form-group">
                    <div class="input-group-icon right">
                        <div class="input-icon"><i class="fa fa-envelope"></i></div>
                        <input class="form-control" type="text" name="username" placeholder="Username" autocomplete="off">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group-icon right">
                        <div class="input-icon"><i class="fa fa-lock font-16"></i></div>
                        <input class="form-control" type="password" name="password" placeholder="Password">
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <input type="submit" name="Login" value="Login" class="btn btn-info btn-block">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <input type="reset" name="Batal" value="BATAL" class="btn btn-danger btn-block">
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- BEGIN PAGA BACKDROPS-->
        <div class="sidenav-backdrop backdrop"></div>
        <div class="preloader-backdrop">
            <div class="page-preloader">Loading</div>
        </div>
        <!-- END PAGA BACKDROPS-->
        <!-- CORE PLUGINS -->
        <script src="./assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="./assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
        <script src="./assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- PAGE LEVEL PLUGINS -->
        <script src="./assets/vendors/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
        <!-- CORE SCRIPTS-->
        <script src="assets/js/app.js" type="text/javascript"></script>
        <!-- PAGE LEVEL SCRIPTS-->
        <script type="text/javascript">
            $(function() {
                $('#login-form').validate({
                    errorClass: "help-block",
                    rules: {
                        email: {
                            required: true
                        },
                        password: {
                            required: true
                        }
                    },
                    highlight: function(e) {
                        $(e).closest(".form-group").addClass("has-error")
                    },
                    unhighlight: function(e) {
                        $(e).closest(".form-group").removeClass("has-error")
                    },
                });
            });
        </script>
    </body>

    </html>
    <?php

    if (isset($_POST['Login'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = mysqli_query($koneksi, "SELECT * FROM users WHERE username='$username' AND password='$password'");
        $ketemu = $sql->num_rows;

        $data = $sql->fetch_assoc();

        if ($ketemu >= 1) {
            session_start();
            $_SESSION['user'] = $data['id_user'];
            header("location:index.php");
        } else {
    ?>
            <script type="text/javascript">
                alert("Login Gagal! \nUsername dan Password SALAH!");
            </script>
<?php
        }
    }
}
?>