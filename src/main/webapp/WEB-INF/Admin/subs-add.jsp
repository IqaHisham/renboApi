<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org", xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head  th:replace="Admin/sidebar :: head"></head>   
    <body style="background-color: #f1f1f1;">
        <div class="h-50 bg-purple position-absolute w-100"></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-2 col-sm-2 mb-xl-0">
                    <div th:replace="Admin/sidebar :: sidebar-admin"></div>
                </div>
                <div class="col-sm-10">
                    <!--content here-->
                    <main class="my-3 ">
                        <header th:replace="Admin/main :: header"></header>
                        <!--content-customized here-->
                        <div class="row justify-content-center">
                            <div class="col-10 mb-3 p-5 ">
                                <div class="card p-3">
                                    <h2>Add subscription plan</h2>
                                    <form th:action="@{/subscribe/save}" method="post" th:object="${subscribe}">
                                        <table class="table table-borderless">
                                            <tr>
                                                <td>Plan Name</td>
                                                <td><input type="text" name="subsName" class="form-control"/></td>
                                            </tr>
                                            <tr>
                                                <td>Subscribe Period</td>
                                                <td>
                                                    <select id="subsPeriod" class="form-control" name="subsPeriod">
                                                        <option value="0">None</option>
                                                        <option value="183">6 Months</option>
                                                        <option value="365">12 Months</option>
                                                    </select>

                                                </td>
                                            </tr>                                            
                                            <tr>
                                                <td>Featured Period</td>
                                                <td>
                                                    <select id="id" class="form-control" name="subsFeatPeriod">
                                                        <option value="0">None</option>
                                                        <option value="183">6 Months</option>
                                                        <option value="365">12 Months</option>
                                                    </select>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Number of items</td>
                                                <td>
                                                    <input type="number" class="form-control" name="subItemNo"/>
                                                </td>                                        
                                            </tr>
                                            <tr>
                                                <td>Service Charges(%)</td>
                                                <td>
                                                    <input type="number" name="subsSC" class="form-control">
                                                </td> 
                                            </tr>
                                            <tr>
                                                <td>Price</td>
                                                <td>
                                                    <input type="text" name="subsPrice" class="form-control" >
                                                </td> 
                                            </tr>                                            
                                        </table>
                                        <button type="submit" class="btn btn-dark">Create subscription plan</button>
                                    </form>
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