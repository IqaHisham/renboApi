<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity5">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!--<link rel="stylesheet" href="/css/style.css" crossorigin="anonymous">-->
        <base href="/">
        <title>Login</title>
    </head>
    <body>
 <div sec:authorize="isAuthenticated()">you already sign in</div>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-4 offset-md-4">
                    <div class="login-form bg-light mt-4 p-4">
                       <h2>Welcome Back</h2>
                        <form th:action="@{/login}" method="POST" class="row g-3">
                            <!-- error message -->
                            <div th:if="${param.error}">
                                <div class="alert alert-danger">Invalid username or
                                    password.</div>
                            </div>

                            <!-- logout message -->
                            <div th:if="${param.logout}">
                                <div class="alert alert-info">You have been logged out.</div>
                            </div>

                            <div class="col-12">
                                <label>Email</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Email@example.com">
                            </div>
                            <div class="col-12">
                                <label>Password</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="col-12">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="rememberMe">
                                    <label class="form-check-label" for="rememberMe"> Remember me</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <input type="submit" value="Login" name="submit" class="btn btn-dark float-end">
                            </div>
                        </form>
                        <hr class="mt-4">
                        <div class="col-12">
                            <p class="text-center mb-0">Have not account yet? <a th:href="@{/signup}">Signup</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://www.markuptag.com/bootstrap/5/js/bootstrap.bundle.min.js"></script>
    </body>

</html>