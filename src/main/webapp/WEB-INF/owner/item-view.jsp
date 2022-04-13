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
                        <div class="row">
                            <div class="col-xl-4 col-sm-4 mb-xl-0">
                                <div class="card p-3 border-0"><br>
                                    <div class="card-body">
                                        <img src="src" th:src="${item.getPhotosImagePath()}" height="200px" alt="alt"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-4 mb-xl-0">
                                <div class="card p-3 border-0"><br>
                                    <div class="card-body">
                                        <img src="src" th:src="${item.getPhotosImagePath2()}" height="200px" alt="alt"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-4 mb-xl-0">
                                <div class="card p-3 border-0"><br>
                                    <div class="card-body">
                                        <img src="src" th:src="${item.getPhotosImagePath3()}" height="200px" alt="alt"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="card p-3 justify-content-center">
                            <div class="row">
                                <div class="col-6">
                                    <table class="table table-borderless border-end">
                                        <tbody>
                                            <tr>
                                                <th width="30%">
                                                    Item Name
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemName}">cell</td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item description
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemDesc}">cell</td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item Brand
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemBrand}">                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item dimension
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemHeight + ' x ' + item.itemWidth + ' x ' + item.itemDepth +' CM'}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item weight
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemHeight+' KG'}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item Category
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemCategory}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item Quantity
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemQty}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item Materials
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemMaterial}">
                                                </td>
                                            </tr>                          
                                        </tbody>
                                    </table>  
                                </div>
                                <div class="col-6">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>                                        <tr>
                                                <th width="30%">
                                                    Item Rent/borrow scheme
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemSkim}">
                                                </td>
                                            </tr>    
                                            <tr>
                                                <th width="30%">
                                                    Rent/Borrow Rate
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${'RM '+item.itemRate}">cell</td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Pickup Deposit
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${'RM '+item.itemRateDepo}">cell</td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Pickup Method
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemPickMetho}">cell</td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Renter/Borrower location
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemRb_Location}">                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">
                                                    Item location
                                                </th>
                                                <td width="1%">:</td>
                                                <td th:text="${item.itemLoc_add + ', ' + item.itemLoc_city + ', ' + item.itemLoc_state }">
                                                </td>
                                            </tr>                          
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--end content customize-->
                    </main>
                    <!--content end here-->
                </div>     
            </div>
        </div>
        <footer th:replace="owner/main :: footer"></footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script>
            function preview() {
                frame.src = URL.createObjectURL(event.target.files[0]);
            }
            function clearImage() {
                document.getElementById('formFile').value = null;
                frame.src = "";
            }
        </script>
    </body>

</html>