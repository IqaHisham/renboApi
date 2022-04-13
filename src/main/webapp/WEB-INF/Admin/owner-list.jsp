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
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone No.</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr th:each="owner, iter: ${list}">
                                        <td th:text="${iter.index+1}"></td>
                                        <td th:text="${owner.getOwnerFirstName()}"></td>
                                        <td th:text="${owner.getOwnerEmail()}"></td>
                                        <td th:text="${owner.getOwnerPhoneNo()}"></td>
                                        <td>
                                            <a href="#" class="btn btn-primary">
                                                <span class="bi small bi-eye"> View</span>
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