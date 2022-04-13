<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org", xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head  th:replace="Admin/sidebar :: head"></head>   
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
                        <div class="row justify-content-center">
                            <div class="col-8 mb-3 p-5 ">
                                <div class="card p-3">
                                    <form th:action="@{/requestSubscribe}" th:object="${subs}" method="post" enctype="multipart/form-data">
                                    <h3 th:text="${subs.subsName+' payment page'}">Subscription payment</h3> 
                                    <p >You are on the way subscribe to <b th:text="${subs.subsName}"></b>. Here is your benefits:</p>
                                    <ul>
                                        <li th:text="${subs.subItemNo+' number of item can be upload'}">first</li>
                                        <li th:with="${subs.subsPeriod!=null} ?result=${subs.subsPeriod/30}"><span th:text="${result+' Months subscription period'}"></span></li>
                                        <li th:with="${subs.subsFeatPeriod!=null}? result=${subs.subsFeatPeriod/30}"><span th:text="${result+' Months opporturnity to be featured in website '}"></span></li>
                                        <li th:text="${subs.subsSC+'% only will charges per transactions'}">third</li>
                                        
                                    </ul>
                                    <br>
                                    <span>Your subscription will valid for <b class="text-danger">12 months</b> after request is accepted by administrator.</span>
                                    <hr>
                                    <a href="../../../java/com/rbms/renbo/model/SubsProof.java"></a>
                                    <div class="row">
                                        <div class="col-6">Total: </div>
                                        <div class="col-6 text-end"><b th:text="${'RM '+subs.subsPrice}">RM 250</b></div>                                        
                                    </div>
                                    <br>
                                    Upload payment receipt here:
                                        
                                        <input type="hidden" name="subsActive" th:field-"*{subsActive}" value="In-Process">
                                        <input type="hidden" name="subsID" th:field="*{SubsID}">
                                        <input type="hidden" th:value="${Owner.getOwnerID()}" name="ownerID"/>
                                       <input class="form-control" type="file" id="formFile2" onchange="preview2()" th:field-"*{paymentProof}" name="paymentProof"><br>
                                        <img id="frame2" src="" class="img-fluid" height="30%"/>
                                        <br>
                                        <button class="btn btn-dark request" id="myToast">Request subscription</button>
                                    </form>

                                </div>
                            </div>
                            <br><br>
                        </div>
                    </main>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
            function preview2() {
                frame2.src = URL.createObjectURL(event.target.files[0]);
            }
            function clearImage() {
                document.getElementById('formFile2').value = null;
                frame2.src = "";
            }
        </script>
    </body>

</html>