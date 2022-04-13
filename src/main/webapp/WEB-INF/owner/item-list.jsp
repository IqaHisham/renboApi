<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head  th:replace="owner/sidebar :: head"></head>   
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
                        <div class="card p-3">
                            <h2>Item List</h2>
                            <table class="table table-hover" id="myTable">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Item Category</th>
                                        <th>Item Rate</th>                        
                                        <th>Item Quantity</th>
                                        <th>Item thumbnail</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr th:each="item, iter: ${item}">
                                        <td th:text="${iter.index+1}"></td>
                                        <td th:text="${item.getItemName()}"></td>
                                        <td th:text="${item.itemCategory}"></td>
                                        <td th:text="${'RM '+item.itemRate+'/'+item.itemSkim}"></td>
                                        <td th:text="${item.getItemQty()}"></td>
                                        <td>
                                            <img th:src="${item.getPhotosImagePath()}" width="100px"/>
                
                                        </td>                        
                                        <td>
                                            <a th:href="@{/Item/view/{id}(id=${item.itemID})}" class="btn btn-primary">
                                                <span class="bi small bi-eye"> View</span>
                                            </a>
                                            <a th:href="@{/Item/edit/{id}(id=${item.itemID})}" class="btn btn-warning text-white">
                                                <span class="bi small bi-gear"> Update</span>
                                            </a>
                                            <a th:href="@{/Item/delete/{id}(id=${item.itemID})}" class="btn btn-danger text-white">
                                                <span class="bi small bi-trash"> Delete</span>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                    
                        </div>
                        <!--end customized content-->
                    </main>
                    <!--content end here-->
                </div>     
            </div>
        </div>
        <footer th:replace="owner/main :: footer"></footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
</html>
