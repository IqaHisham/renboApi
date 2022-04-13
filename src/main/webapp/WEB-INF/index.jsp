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
        <link rel="stylesheet" th:href="@{/css/carousel.css}" >
        <base href="/">
        <title>RenBoNow</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-light text-white fixed-top bg-light">
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
        <main>
            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><img th:src="@{/img/R.jpg}" width="100%" height="100%" alt="alt"/></svg>

                        <div class="container">
                            <div class="carousel-caption text-start">
                                <h1><div sec:authorize="hasRole('RenBo')">Text visible to admin.</div></h1>
                                <p>Some representative placeholder content fors the first slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><img th:src="@{/img/w.jpg}" width="100%" height="100%" alt="alt"/></svg>

                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Another example headline.</h1>
                                <p>Some representative placeholder content for the second slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><img th:src="@{/img/photo-2.png}" width="100%" height="100%" alt="alt"/></svg>

                        <div class="container">
                            <div class="carousel-caption text-end">
                                <h1>One more for good measure.</h1>
                                <p>Some representative placeholder content for the third slide of this carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <!-- End carousel -->
            <!-- categories -->
            <br>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-3">
                        <div class="card">
                            <div class="card-body">
                                <h2>Filter by:</h2>
                                <form action="" method="post">
                                    <label>Search</label>
                                    <input type="text" name="search" class="form-control">
                                    <label>Price</label>
                                    <input type="range" min="1" max="10000" class="form-control">
                                    <button class="btn btn-dark">SEARCH</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- </div> -->
                    <div class="col-9">
                        <div class="row row-cols-1 row-cols-md-4 g-4">
                            <div class="col" th:each="item, iter: ${item}">
                                <div class="card h-100">
                                    <img th:src="${item.getPhotosImagePath()}" class="card-img-top img-fluid" alt="..." style=" float: left;object-fit: cover;width:100%;height: 200px;overflow: hidden">
                                    <div class="card-body">
                                        <h5 class="card-title" th:text="${item.itemName}">Card title</h5>
                                        <p class="card-text" th:text="${item.itemDesc}">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                        <a class="btn btn-purple" th:href="@{/item-details/{id}(id=${item.itemID})}">View details</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>
<!--https://mdbootstrap.com/docs/standard/navigation/footer/-->
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    </body>
</html>