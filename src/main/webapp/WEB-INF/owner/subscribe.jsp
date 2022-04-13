<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org", xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head  th:replace="Admin/sidebar :: head"></head>   
    <body style="background-color: #f1f1f1;">
        <div class="h-50 bg-purple position-absolute w-100"></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-2 col-sm-2 mb-xl-0">
                    <div th:replace="owner/sidebar :: sidebar-owner"></div>
                </div>
                <div class="col-sm-10">
                    <!--content here-->
                    <main class="my-3 ">
                        <header th:replace="owner/main :: header"></header>
                        <!--content-customized here-->
                        <div class="row">
                            <div class="col-12 mb-3">
                                <div class="card p-3">
                                    <h3>Subscribe to a plan</h3> 
                                    <p>You current subscribe plan is ____-</p>
                                </div>
                            </div>
                            <br><br>

                            <div class="col-4" th:each="subscribe, iter: ${subscribe}">
                                <div class="card p-3" >
                                    <h2 th:text="${subscribe.getSubsName()}">Plan 1</h2>
                                    <ul>
                                        <li>Subscription period : <span th:text="${subscribe.getSubsPeriod()}"></span> Days</li>
                                        <li>Number of item: <span th:text="${subscribe.getSubItemNo()}"></span></li>
                                        <li>Features period: <span th:text="${subscribe.getSubsFeatPeriod()}"></span></li>
                                        <li>service charges: <span th:text="${subscribe.getSubsSC()}"></span>%</li>
                                        
                                    </ul>
                                        <a th:href="@{/subscribe-payment/{id}(id=${subscribe.getSubsID()})}" class="text-decoration-none"> <button class="btn btn-dark btn-group-vertical" >Subscribe</button></a>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>

</html>