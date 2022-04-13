<!DOCTYPE html SYSTEM "http://www.thymeleaf.org/dtd/xhtml1-strict-thymeleaf-4.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
          <!--<link rel="stylesheet" th:href="@{/css/style.css}">-->    
        <title>Sign up</title>
        <style>
            .error-message{
                color: #e16070;
            }
        </style>
    </head>

<body>
    <div class="container">
        <div class="row mt-5">
            <div class="col-md-5 offset-md-4">
                <div class="login-form bg-light mt-4 p-4">
                    <div th:if="${param.success}">
                        <div class="alert alert-info">You've successfully registered to Renbo!</div>
                    </div>
                    <form th:action="@{/signup/register}" th:object="${user}" method="post">
                        <p class="error-message" th:each="error : ${#fields.errors('global')}" th:text="${error}">Validation error
                    </p>
                        <div class="form-group" th:classappend="${#fields.hasErrors('firstName')}? 'has-error':''">
                            <label for="firstName" class="control-label">First name</label> 
                            <input id="firstName" class="form-control" th:field="*{firstName}" />
                            <p class="error-message" th:each="error: ${#fields.errors('firstName')}" th:text="${error}">
                                Validation error</p>
                        </div>
                        <div class="form-group" th:classappend="${#fields.hasErrors('lastName')}? 'has-error':''">
                            <label for="lastName" class="control-label">Last name</label> 
                            <input id="lastName" class="form-control" th:field="*{lastName}" />
                            <p class="error-message" th:each="error : ${#fields.errors('lastName')}" th:text="${error}">
                                Validation error</p>
                        </div>

                        <div class="form-group" th:classappend="${#fields.hasErrors('email')}? 'has-error':''">
                            <label for="email" class="control-label">E-mail</label> 
                            <input id="email" class="form-control" th:field="*{email}" />
                            <p class="error-message" th:each="error : ${#fields.errors('email')}" th:text="${error}">
                                Validation error</p>
                        </div>

                        <div class="form-group" th:classappend="${#fields.hasErrors('password')}? 'has-error':''">
                            <label for="password" class="control-label">Password</label> 
                            <input id="password" class="form-control" type="password" th:field="*{password}" />
                            <p class="error-message" th:each="error : ${#fields.errors('password')}" th:text="${error}">
                                Validation error</p>
                        </div>

                        <div class="form-group" th:classappend="${#fields.hasErrors('role')}? 'has-error':''">
                            <label for="role" class="control-label">Role</label>
                            <select th:field="*{role}" id="role" class="form-control">
                                <option th:value="Owner" th:text="Owner" class="form-control"></option>
                                <option th:value="RenBo" th:text="'Renter/Borrower'" class="form-control"></option>
                            </select>
                            <p class="error-message" th:each="error : ${#fields.errors('role')}" th:text="${error}">
                                Validation error</p>
                        </div>
                        <div class="form-group" th:classappend="${#fields.hasErrors('terms')}? 'has-error':''">
                            <input id="terms" type="checkbox" th:field="*{terms}" />   
                            <label class="control-label"
                                for="terms"> I agree with the <a href="#">terms and conditions</a> for Registration.
                            </label>
                            <p class="error-message" th:each="error : ${#fields.errors('terms')}" th:text="${error}">
                                Validation error</p>
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Register"><br>
                            <span>Already registered? <a href="/" th:href="@{/login}">Login here</a></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

</html>