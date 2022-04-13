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
                        <div class="card p-3 ">
                            <form th:action="@{/Item/update/{id}(id=${item.itemID})}" th:object="${item}" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-6">
                                        <table class="table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td colspan="3">
                                                        <label for="itemName" class="form-label">Item Name</label>
                                                        <input type="text" th:field="*{itemName}" id="itemName"
                                                               class="form-control" placeholder="Item name">
                                                        <input type="hidden" th:value="*{itemID}" name="itemID"/>
                                                        <input type="hidden" th:value="*{ownerID}" name="ownerID"/>
                                                        <input type="hidden" th:value="*{itemAvailability}" name="itemAvailability"/>


                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        <label for="itemDesc" class="form-label">Item description</label>
                                                        <input type="text" th:field="*{itemDesc}" id="itemDesc"
                                                               class="form-control" placeholder="Item description">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <label for="itemBrand" class="form-label">Item Brand</label>
                                                        <input type="text" th:field="*{itemBrand}" id="itemBrand"
                                                               class="form-control" placeholder="Item brand">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="itemDimen" class="form-label">Item dimension</label>
                                                        <div class="input-group mb-3">
                                                            <input type="text" th:field="*{itemHeight}" id="height"
                                                                   class="form-control w-25" placeholder="Height"> &times;
                                                            <input type="text" th:field="*{itemWidth}" id="width"
                                                                   class="form-control w-25" placeholder="Width"> &times;
                                                            <input type="text" th:field="*{itemDepth}" id="depth"
                                                                   class="form-control w-25" placeholder="Depth">
                                                        </div>

                                                    </td>
                                                    <td>
                                                        <label for="itemWeight" class="form-label">Item weight</label>
                                                        <input type="text" th:field="*{itemWeight}" id="itemWeight"
                                                               class="form-control" placeholder="Kg">

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="itemCate" class="form-label">Item
                                                            category</label>
                                                        <select th:field="*{itemCategory}" id="itemCate" class="form-select">
                                                            <option value="Apparel & Accessories">Apparel & Accessories
                                                            </option>
                                                            <option value="Computer & Accessories">Computer & Accessories
                                                            </option>
                                                            <option value="Health & Beauty">Health & Beauty</option>
                                                            <option value="Home & Living">Home & Living</option>
                                                            <option value="Mobile & Gadgets">Mobile & Gadgets</option>
                                                            <option value="Sports & Outdoor">Sports & Outdoor</option>
                                                            <option value="Stationery">Stationery</option>
                                                            <option value="Books & Magazine">Books & Magazine</option>
                                                            <option value="Games & Hobbies">Games & Hobbies</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <label for="itemQty" class="form-label">Item
                                                            Quantity</label>
                                                        <input type="number" th:field="*{itemQty}" class="form-control" min="0"
                                                               max="100" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <label for="itemMaterial" class="form-label">Item
                                                            materials</label>
                                                        <input type="text" th:field="*{itemMaterial}" id="itemMaterial"
                                                               class="form-control" placeholder="Materials">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-6">
                                        <table class="table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td colspan="3">
                                                        <label for="itemSkim" class="form-label">Item rent/borrow
                                                            scheme</label>
                                                        <select th:field="*{itemSkim}" id="itemSkim" class="form-select">
                                                            <option value="Per Day">Per Day</option>
                                                            <option value="Per Month">Per Month</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="itemRate" class="form-label">Rent/Borrow
                                                            rate</label>
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">RM</span>
                                                            <input type="text" class="form-control"
                                                                   aria-label="Amount (to the nearest dollar)" th:field="*{itemRate}">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <label for="itemRateDepo" class="form-label">Rent/Borrow Deposit
                                                            rate</label>
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">RM</span>
                                                            <input type="text" class="form-control"
                                                                   aria-label="Amount (to the nearest dollar)"
                                                                   th:field="*{itemRateDepo}">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <label for="itemPickMetho" class="form-label">Pickup
                                                            method</label>
                                                        <select th:field="*{itemPickMetho}" id="" class="form-select">
                                                            <option value="By postage">By postage</option>
                                                            <option value="Pick up at owner address">Pick up at owner address
                                                            </option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <label for="rbLocation" class="form-label">Renter/Borrower location:</label>
                                                        <select th:field="*{itemRb_Location}" id="" class="form-select">
                                                            <option value="Same state">Must in the same state</option>
                                                            <option value="Same city">Must in the same city</option>
                                                            <option value="Open state and city">Open to all states and city</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <label for="ItemLoc_Add" class="form-label">Item
                                                            location</label>
                                                        <input type="text" th:field="*{itemLoc_add}" id="itemLoc_add"
                                                               placeholder="Address" class="form-control">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="ItemLoc_State" class="form-label">State</label>
                                                        <input type="text" th:field="*{itemLoc_state}" id="" class="form-control"
                                                               placeholder="State">
                                                    </td>
                                                    <td>
                                                        <label for="ItemLoc_City" class="form-label">City</label>
                                                        <input type="text" th:field="*{itemLoc_city}" id="" class="form-control"
                                                               placeholder="City">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                    <!--                                <table class="table table-borderless">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td><label for="Image" class="form-label">Image 1</label>
                                                                                    <input class="form-control" type="file" id="formFile1" onchange="preview1()" th:field="*{itemImage_1}">
                                                                                    <img id="frame1" th:src="@{${'/img/catalog/' + item.itemID +'/'+ item.itemImage_1}}" class="img-fluid" style="width: 100%; height: 50%;overflow: hidden"/>-->
                                    <input type="hidden" th:value="*{itemImage_1}" name="itemImage_1" />
                                    <!--</td>-->
                                    <!--                                            <td><label for="Image" class="form-label">Image 2</label>
                                                                                    <input class="form-control" type="file" id="formFile2" onchange="preview2()" th:field="*{itemImage_2}"><br>
                                                                                    <img id="frame2" th:src="@{${'/img/catalog/' + item.itemID +'/'+ item.itemImage_2}}" class="img-fluid" style="width: 100%; height: 50%;overflow: hidden"/>-->
                                    <input type="hidden" th:value="*{itemImage_2}" name="itemImage_2" />
                                    <!--                                            </td> 
                                                                                <td><label for="Image" class="form-label">Image 3</label>
                                                                                    <input class="form-control" type="file" id="formFile3" onchange="preview3()" th:field="*{itemImage_3}">
                                                                                    <img id="frame3" th:src="@{${'/img/catalog/' + item.itemID +'/'+ item.itemImage_3}}" class="img-fluid" style="width: 100%; height: 50%;overflow: hidden"/>-->
                                    <input type="hidden" th:value="*{itemImage_3}" name="itemImage_3" />
                                    <!--                                            </td> 
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>-->
                                    <button type="submit" class="btn btn-success btn-xl">Save & Proceed to upload images</button>
                                </div>
                            </form>
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
            function preview1() {
                frame1.src = URL.createObjectURL(event.target.files[0]);
            }
            function preview2() {
                frame2.src = URL.createObjectURL(event.target.files[0]);
            }
            function preview3() {
                frame3.src = URL.createObjectURL(event.target.files[0]);
            }
            function clearImage() {
                document.getElementById('formFile1').value = null;
                document.getElementById('formFile2').value = null;
                document.getElementById('formFile3').value = null;
                frame1.src = "";
                frame2.src = "";
                frame3.src = "";
            }
        </script>
    </body>
</html>
