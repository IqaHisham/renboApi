
<head th:fragment="head">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="shortcut icon" type="image/png" th:href="@{/favicon.ico}"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" th:href="@{/css/style.css}">
    <!--script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js" ></script>
    <title>RenBoNow</title>
</head>             
<div class="col-xl-12 col-sm-12 mb-xl-0" th:fragment="sidebar-owner">
    <nav id="sidebarMenu"
         class="position-relative d-md-block bg-light sidebar collapse shadow-sm rounded-3 fixed-start my-3">
        <div class="position-sticky pt-3" style="min-height: 85vh">
            <ul class="nav nav-pills flex-column mb-auto">
                <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 m-2 text-dark" href="#"><img th:src="@{/logo.png}" class="logo"/> </a>
                <li class="nav-item mt-3 mb-3">
                    <a th:href="@{/dashboard}" class="nav-link active " aria-current="page">
                        <span class="bi-speedometer" width="16" height="16"> Dashboard</span>
                    </a>
                </li>
                <li class="mb-3">
                    <a class="nav-link link-dark dropdown" href="#usertype" data-bs-toggle="collapse"
                       aria-expanded="false">
                        <span class="bi bi-person-circle" width="16" height="16"> Item </span> <i
                            class="bi small bi-caret-down-fill"></i>
                    </a>
                    <div class="list-group text-small collapse border-0" id="usertype">
                        <a class="list-group-item list-group-item border-0" th:href="@{/Item/Add}"><span
                                class="bi small bi-caret-right-fill"> Add Item</span></a>
                        <a class="list-group-item list-group-item border-0"
                           th:href="@{/Item/List}"><span class="bi small bi-caret-right-fill"> Item
                                List</span></a>
                    </div>
                </li>
                <li class="mb-3">
                    <a href="#" class="nav-link link-dark" aria-current="page">
                        <span class="bi bi-bag-check-fill" width="16" height="16"> Transaction</span>
                    </a>
                </li>
                <li class="mb-3">
                    <a href="#" class="nav-link link-dark" aria-current="page">
                        <span class="bi bi-graph-up-arrow" width="16" height="16"> Sales</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link link-dark">
                        <span class="bi bi-people" width="16" height="16"> Customers</span>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>
</div>