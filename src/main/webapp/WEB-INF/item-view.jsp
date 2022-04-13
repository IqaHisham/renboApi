<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" th:href="@{/css/style.css}">  
        <!--<link rel="stylesheet" th:href="@{/css/carousel.css}" >-->
        <base href="/">
        <title>RenBoNow</title>
        <style>
            .carousel-item {
                height: 80%;
            }
            .carousel-item > img{
                min-height: max-content;
               
            }
            .card-body{
                height: max-content;
            }
        </style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-light text-light fixed-top bg-light">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="col-4 pt-1">
                            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Link</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-4 text-center">
                            <a class="navbar-brand fs-1 fw-bold" href="#">RenBoNow</a>
                        </div>
                        <div class="col-4 d-flex justify-content-end align-items-center" sec:authorize="isAnonymous()">          
                            <a th:href="@{/login}"><button type="button" class="btn btn-indigo">Login</button></a>
                        </div>
                        <div class="col-4 d-flex justify-content-end align-items-center" sec:authorize="isAuthenticated()">          
                            <a th:href="@{/logout}"><button type="button" class="btn btn-indigo">Logout</button></a>
                            <a th:href="@{/logout}"><button type="button" class="btn btn-dark">Dashboard</button></a>
                        </div>                        
                    </div>
                </div>
            </nav>
        </header>
        <!-- End header -->
        <main class="p-1"><br>
            <div class="container">
                <br>                <br>
                <br>

                <!--content-customized here-->
                     <div class="card bg-light">
                        <div class="card-body">               
                            <div class="row">
                            <div class="col-sm-5">
                                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img th:src="${item.getPhotosImagePath()}" class="d-block" style=" float: left;object-fit: cover;width:100%;overflow: hidden">
                                        </div>
                                        <div class="carousel-item">
                                            <img th:src="${item.getPhotosImagePath2()}" class="d-block" style=" float: left;object-fit: cover;width:100%;overflow: hidden">
                                        </div>
                                        <div class="carousel-item">
                                            <img th:src="${item.getPhotosImagePath3()}" class="d-block" style=" float: left;object-fit: cover;width:100%;overflsow: hidden">
                                        </div>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <h3 th:text="${item.itemName}">ITEM NAMEE</h3>
                                <table class="table table-borderless">
                                    <tbody>
                                        <tr>
                                            <th width="30%"> Item Rent/borrow scheme</th>
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
                </div>
                    <br>
                    <div class="row">
                        <div class=" card col-xl-12 col-sm-12 mb-xl-0">
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
                    </div>
            </div> 
            <!--end content customize-->
        </main>
        <!--content end here-->

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