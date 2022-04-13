<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org", xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head  th:replace="owner/sidebar :: head"></head>   
<body style="background-color: #f1f1f1;">
        <div class="h-50 bg-purple position-absolute w-100"></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-2 col-sm-2 mb-xl-0">
                    <div class="col-xl-12 col-sm-12 mb-xl-0"  th:replace="owner/sidebar :: sidebar-owner"></div>
                </div>
                <div class="col-sm-10">
                    <!--content here-->
                    <main class="my-3 ">
                        <header th:replace="owner/main :: header"></header>
                        <div class="row">
                            <div class="col-xl-3 col-sm-6 mb-xl-0">
                                <div class="card p-3 bg-light border-0">Rental/Borrow<br>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Today's
                                                        Money</p>
                                                    <h5 class="font-weight-bolder">
                                                        $53,000
                                                    </h5>
                                                    <p class="mb-0">
                                                        <span class="text-success text-sm font-weight-bolder">+55%</span>
                                                        since yesterday
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-warning bg-gradient shadow-primary text-center rounded-circle">
                                                    <i class="bi bi-receipt opacity-10" id="icon-dash"
                                                       aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 mb-xl-0">
                                <div class="card p-3 bg-light border-0">Items<br>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Today's
                                                        Money</p>
                                                    <h5 class="font-weight-bolder">
                                                        $53,000
                                                    </h5>
                                                    <p class="mb-0">
                                                        <span class="text-success text-sm font-weight-bolder">+55%</span>
                                                        since yesterday
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-warning bg-gradient shadow-primary text-center rounded-circle">
                                                    <i class="bi bi-shop opacity-10" id="icon-dash" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 mb-xl-0">
                                <div class="card p-3 bg-light border-0">Sales<br>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Today's
                                                        Money</p>
                                                    <h5 class="font-weight-bolder">
                                                        $53,000
                                                    </h5>
                                                    <p class="mb-0">
                                                        <span class="text-success text-sm font-weight-bolder">+55%</span>
                                                        since yesterday
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-warning bg-gradient shadow-primary text-center rounded-circle">
                                                    <i class="bi bi-cart4 opacity-10" id="icon-dash" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 mb-xl-0">
                                <div class="card p-3 bg-light border-0">Customers<br>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Today's
                                                        Money</p>
                                                    <h5 class="font-weight-bolder">
                                                        $53,000
                                                    </h5>
                                                    <p class="mb-0">
                                                        <span class="text-success text-sm font-weight-bolder">+55%</span>
                                                        since yesterday
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-warning bg-gradient shadow-primary text-center rounded-circle">
                                                    <i class="bi bi-people opacity-10" id="icon-dash"
                                                       aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6 col-sm-12 mb-xl-0 mt-3">
                                <div class="card p-3 bg-light border-0">Sales<br>
                                    <canvas id="myChart" style="width:100%;max-width:700px"></canvas>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-12 mb-xl-0 mt-3">
                                <div class="card p-3 bg-light border-0">Popular<br>
                                    <div class="card mb-3" style="max-width: 540px;">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <img src="..." class="img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h5 class="card-title">Card title</h5>
                                                    <p class="card-text">This is a wider card with supporting text below as
                                                        a natural lead-in to additional content. This content is a little
                                                        bit longer.</p>
                                                    <p class="card-text"><small class="text-muted">Last updated 3 mins
                                                            ago</small></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                    <!--content end here-->
                </div>     
            </div>
        </div>
        <footer th:replace="owner/main :: footer"></footer>
        <script>
            const labels = [
                'January',
                'February',
                'March',
                'April',
                'May',
                'June',
            ];

            const data = {
                labels: labels,
                datasets: [{
                        label: 'My First dataset',
                        backgroundColor: 'rgb(255, 99, 132)',
                        borderColor: 'rgb(255, 99, 132)',
                        data: [0, 10, 5, 2, 20, 30, 45],
                    }]
            };

            const config = {
                type: 'line',
                data: data,
                options: {}
            };

            const myChart = new Chart(
                    document.getElementById('myChart'),
                    config
                    );
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>

</html>