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
                        <div class="card p-3">
                            <h2>List of subscription</h2>
                            <p>Reminder: customer subscription does not active if administrator does not accept the request.</p>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Customer name</th>
                                        <th>Payment proof</th>
                                        <th>Subscription plan</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr th:each="sub, iter: ${sublist}">
                                        <td th:text="${iter.index+1}"></td>
                                        <td th:text="${ownerFirstName}"></td>
                                        <td><img th:src="${sub.getPhotosImagePath()}" width="100px" alt="right click > open image in new tab"/></td>
                                        <td th:text="${sub.subsID}"></td>
                                        <td>
                                            <a th:href="${sub.getPhotosImagePath()}" target="_blank" class="btn btn-primary">
                                                <span class="bi small bi-eye"> View receipt</span>
                                            </a>
                                            <a href="#" class="btn btn-warning text-white">
                                                <span class="bi small bi-gear"> Update</span>
                                            </a>
                                            <a href="#" class="btn btn-danger text-white">
                                                <span class="bi small bi-trash"> Delete</span>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>   
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