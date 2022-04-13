<header th:fragment="menu-header" class="navbar navbar-light navbar-expand-lg flex-md-nowrap text-white mb-3 pe-4">
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button"
            data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="w-75"><span class="fs-5 fw-bold ">Dashboard</span><br><span
            class="text-white">Monday</span><span class="text-white"> ,15 July 2021</span></div>
    <div class="w-25">
    </div>
    
    <div class="navbar-nav ">
        <div class="nav-item text-nowrap d-flex dropdown">
            <a class="nav-link px-3 text-white" href="#"><span class="bi bi-envelope"></span></a>
            <a class="nav-link px-3 text-white" href="#"><span class="bi bi-bell"></span></a>
            <a href="#"
               class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle dropstart text-white"
               id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false" sec:authorize="isAuthenticated()">
                <span sec:authentication="name"></span>
                                <!--<span sec:authentication="id"></span>-->

            </a>
            <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                <li><a class="dropdown-item" th:href="@{/subscribe}">Subscription</a></li>
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" th:href="@{/logout}">Sign out</a></li>
            </ul>
        </div>
    </div>
</header>
            
    <footer class="bg-light position-absolute w-100" th:fragment="footer">
        <div class="text-center p-4">
            © 2020 Copyright:
            <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
    </footer>