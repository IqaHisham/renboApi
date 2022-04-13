
<head th:fragment="head">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" th:href="@{/css/style.css}">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <title>RenBoNow</title>
</head>             
<div class="col-xl-12 col-sm-12 mb-xl-0" th:fragment="sidebar-admin">
    <nav id="sidebarMenu"
         class="position-relative d-md-block bg-light sidebar collapse shadow-sm rounded-3 fixed-start my-3">
        <div class="position-sticky pt-3" style="min-height: 85vh">
            <ul class="nav nav-pills flex-column mb-auto">
                <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 m-2 text-dark" href="#">RenBoNow</a>
                <li class="nav-item mt-3 mb-3">
                    <a th:href="@{/admin}" class="nav-link active " aria-current="page">
                        <span class="bi-speedometer" width="16" height="16"> Dashboard</span>
                    </a>
                </li>
                <li class="mb-3">
                    <a class="nav-link link-dark dropdown" href="#usertype" data-bs-toggle="collapse"
                       aria-expanded="false">
                        <span class="bi bi-person-circle" width="16" height="16"> Users </span> <i
                            class="bi small bi-caret-down-fill"></i>
                    </a>
                    <div class="list-group text-small collapse border-0" id="usertype">
                        <a class="list-group-item list-group-item border-0" th:href="@{owner-list}"><span
                                class="bi small bi-caret-right-fill"> Owner list</span></a>
                        <a class="list-group-item list-group-item border-0"
                           th:href="@{renbo-list}"><span class="bi small bi-caret-right-fill"> Renter/Borrower
                                List</span></a>
                    </div>
                </li>
                <li class="mb-3">
                    <a th:href="@{subscribe-list}" class="nav-link link-dark" aria-current="page">
                        <span class="bi bi-bag-check-fill" width="16" height="16"> Transaction</span>
                    </a>
                </li>
                <li class="mb-3">
                    <a class="nav-link link-dark dropdown" href="#subs" data-bs-toggle="collapse"
                       aria-expanded="false">
                        <span class="bi bi-person-circle" width="16" height="16"> Subscription </span> <i
                            class="bi small bi-caret-down-fill"></i>
                    </a>
                    <div class="list-group text-small collapse border-0" id="subs">
                        <a class="list-group-item list-group-item border-0" th:href="@{/subscribe/addform}"><span
                                class="bi small bi-caret-right-fill"> New subscription plan</span></a>
                        <a class="list-group-item list-group-item border-0"
                           th:href="@{/subscribe-list}"><span class="bi small bi-caret-right-fill"> List subscriber
                                List</span></a>
                    </div>
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