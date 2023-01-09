<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMINISTRATOR PAGE</title>
    <!-- Universal Stylesheet -->
    <link rel="stylesheet" href="css/font.css">
</head>

<jsp:include page="../common/header.jsp"/>
<body>
    <div class="container">

        <!-- Admin: MAIN -->
        <h1 class="fw-bolder">ADMINISTRATORS</h1>
        <br>
        <br>
        <div class="row justify-text-center">
            <div class="col-md-4">
                <h3 class="fw-bold">Brands/Models</h3>
                <br>
                <ul class="list-group">
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#newBrand">New Brand</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#newModel">New Model</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#modiBrand">Modify Brand info</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#modiModel">Modify Model info</a></li>
                </ul>
                <br>
            </div>
            <div class="col-md-4">
                <h3 class="fw-bold">Products</h3>
                <br>
                <ul class="list-group">
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#addNewProducts">New Products</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#modifyProductInfo">Modify Product info</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary" data-bs-toggle="modal"
                            data-bs-target="#deleteProducts">Delete Products</a></li>
                </ul>
                <br>
            </div>
            <div class="col-md-4">
                <h3 class="fw-bold">Members</h3>
                <br>
                <ul class="list-group">
                    <li class="list-group-item"><a href="#" class="link-secondary">Grant Points</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary">Modify Member Status</a></li>
                    <li class="list-group-item"><a href="#" class="link-secondary">Delete Member</a></li>
                </ul>
                <br>
            </div>
        </div>
        <br>
        <hr>
        <br>
        <div class="row">
            <h2 class="fw-bold">CUSTOMER SERVICES</h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Category</th>
                        <th colspan="2">Title</th>
                        <th>Writer</th>
                        <th>Replied</th>
                    </tr>
                </thead>
                <tbody id="cs-admin">
                </tbody>
            </table>
            <nav aria-label="Page navigation" class="justify-content-center" style="cursor:pointer;">
  						<ul class="pagination justify-content-center" id="cs-admin-footer"></ul>
  			</nav>
        </div>

        <!-- Modal: Brands/Models - Add a New Brand -->
        <div class="modal fade" id="newBrand" tabindex="-1" aria-labelledby="newBrandLabel" aria-hidden="true">
            <div class="modal-dialog model-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5 fw-bold" id="newBrandLabel">NEW BRAND</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="addToBrand.ad" method="post">
                        <div class="modal-body">
                            <label for="newBrandName" class="form-label fw-bold">Jot Down</label>
                            <input type="text" name="brand" id="newBrandName" class="form-control" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-dark">Submit</button>
                            <button type="button" class="btn btn-outline-secondary"
                                data-bs-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Modal: Brands/Models - Add a New Model -->
        <div class="modal fade" id="newModel" tabindex="-1" aria-labelledby="newModelLabel" aria-hidden="true">
            <div class="modal-dialog model-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5 fw-bold" id="newModelLabel">NEW MODEL</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="addToModel.ad" method="post">
                        <div class="modal-body">
                            <div class="row row-cols-1 row-cols-md-2 g-3">
                                <div class="col">
                                    <label for="brandsList1" class="form-label fw-bold">Brands</label>
                                    <select name="brandNo" id="brandsList1" class="form-select">
                                        <option value="1">Fender</option>
                                        <option value="2">Gibson</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="newModelName" class="form-label fw-bold">Jot Down</label>
                                    <input type="text" name="name" id="newModelName" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-dark">Submit</button>
                            <button type="button" class="btn btn-outline-secondary"
                                data-bs-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Modal: Brands/Models - modiBrand -->
        <div class="modal fade" id="modiBrand" tabindex="-1" aria-labelledby="modiBrandLabel" aria-hidden="true">
            <div class="modal-dialog model-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5 fw-bold" id="modiBrandLabel">MODIFY BRAND INFO</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="modiBrand.ad" method="post">
                        <div class="modal-body">
                            <div class="row row-cols-1 row-cols-md-2 g-3">
                                <div class="col">
                                    <label for="brandsList" class="form-label fw-bold">Brands</label>
                                    <select name="brandNo" id="brandsList" class="form-select">
                                        <option value="1">Fender</option>
                                        <option value="2">Gibson</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="modiBrandName" class="form-label fw-bold">Jot Down</label>
                                    <input type="text" name="name" id="modiBrandName" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-dark">Submit</button>
                            <button type="button" class="btn btn-outline-secondary"
                                data-bs-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Modal: Brands/Models - modiModel -->
        <div class="modal fade" id="modiModel" tabindex="-1" aria-labelledby="modiModelLabel" aria-hidden="true">
            <div class="modal-dialog model-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5 fw-bold" id="modiModelLabel">MODIFY MODEL INFO</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="modiModel.ad" method="post">
                        <div class="modal-body">
                            <div class="row row-cols-1 row-cols-md-2 g-3">
                                <div class="col">
                                    <label for="brandsList2" class="form-label fw-bold">Brands</label>
                                    <select name="brandNo2" id="brandsList2" class="form-select">
                                        <option value="1">Fender</option>
                                        <option value="2">Gibson</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row row-cols-1 row-cols-md-2 g-3" id="modelsList2">
                                <br>
                                <div class="col">
                                    <label for="modelsList22" class="form-label fw-bold">Models</label>
                                    <select name="modelNo" id="modelsList22" class="form-select">
                                        <option value="1">Stratocaster</option>
                                        <option value="2">Telecaster</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="modiModelName" class="form-label fw-bold">Jot Down</label>
                                    <input type="text" name="name" id="modiModelName" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-dark">Submit</button>
                            <button type="button" class="btn btn-outline-secondary"
                                data-bs-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Modal: Products - Add New Products -->
        <div class="modal fade" id="addNewProducts" tabindex="-1" aria-labelledby="adddNewProductsLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-3 fw-bolder" id="addNewProductsLabel">ADD NEW PRODUCTS</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <jsp:include page="../admin/newproduct.jsp"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal: Products - Modify Product Info -->
        <div class="modal fade" id="modifyProductInfo" tabindex="-1" aria-labelledby="modifyProductInfoLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-3 fw-bolder" id="modifyProductInfoLabel">MODIFY PRODUCT INFO</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <jsp:include page="../admin/modiproduct.jsp"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal: Products - Delete Products -->
        <div class="modal fade" id="deleteProducts" tabindex="-1" aria-labelledby="deleteProductsLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-3 fw-bolder" id="deleteProductsLabel">DELETE PRODUCTS</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <jsp:include page="../admin/deleteproduct.jsp"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal: AdminCSReply -->
        <div class="modal fade" id="adminCsReply" tabindex="-1" aria-labelledby="adminCsReplyLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-3 fw-bolder" id="deleteProductsLabel">WRITE A REPLY</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    	<form action="addToAnswer.qa" method="post">
	                    	<input type="hidden" name="serviceNo" id="adminCsServiceNo" value="">
    	                	<textarea name="questionReply" class="form-control" rows="10" style="resize:none;" required></textarea>
    	                	<br>
    	                	<button type="submit" class="btn btn-dark">Submit</button>
    	                	<button type="button" class="btn btn-outline-secondary"
                                data-bs-dismiss="modal">Close</button>
                    	</form>
                    </div>
                </div>
            </div>
        </div>
        

    </div>
</body>
<jsp:include page="../common/footer.jsp"/>
<script src="resources/js/admin.js"></script>
<script src="resources/js/adminFilter.js"></script>
<script>
	adminCsInfo(1);
</script>

</html>