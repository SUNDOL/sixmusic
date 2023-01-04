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
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>3</td>
                        <td>배송문의</td>
                        <td>시벌롬들아 내가 기타를 얼마나 많이 샀는데</td>
                        <td>성기사</td>
                        <td>2023-01-02</td>
                    </tr>
                </tbody>
            </table>
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
                        <form action="#" method="post" enctype="multipart/form-data">
                            <div class="container">
                                <div class="mb-3">
                                    <div class="row row-cols-1 row-cols-md-2 g-3">
                                        <div class="col">
                                            <label for="category" class="form-label fw-bold">Category</label>
                                            <select name="category" id="category" class="form-select" required>
                                                <option value="1">Electric Guitars</option>
                                                <option value="2">Acoustic Guitars</option>
                                                <option value="3">Basses</option>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <label for="type" class="form-label fw-bold">Type</label>
                                            <select name="type" id="type" class="form-select" required>
                                                <option value="1">Solid Body</option>
                                                <option value="2">Hollow & Semi-Hollow Body</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="row row-cols-1 row-cols-md-2 g-3">
                                        <div class="col">
                                            <label for="selectBrand" class="form-label fw-bold">Brand</label>
                                            <select name="selectBrand" id="selectBrand" class="form-select" required>
                                                <option value="1">Fender</option>
                                                <option value="2">Gibson</option>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <label for="selectModel" class="form-label fw-bold">Model</label>
                                            <select name="selectModel" id="selectModel" class="form-select" required>
                                                <option value="1">Stratocaster</option>
                                                <option value="2">Telecaster</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="row row-cols-1 row-cols-md-2 g-3">
                                        <div class="col">
                                            <label for="selectName" class="form-label fw-bold">Product Name</label>
                                            <select name="selectName" id="selectName" class="form-select" required>
                                                <option value="a">Input New Name</option>
                                                <option value="b">Choose Existing Name</option>
                                            </select>
                                        </div>
                                        <div class="col" id="selectNameA">
                                            <label for="nameA" class="form-label fw-bold">Input New Name</label>
                                            <input type="text" name="name" id="nameA" class="form-control" required>
                                        </div>
                                        <div class="col" id="selectNameB">
                                            <label for="nameB" class="form-label fw-bold">Choose Existing Name</label>
                                            <select name="name" id="nameB" class="form-select" required>
                                                <option value="1">American Vintage II Stratocaster</option>
                                                <option value="2">American Professional II Stratocaster</option>
                                                <option value="3">Eric Clapton Stratocaster</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="row row-cols-1 row-cols-md-3 g-3">
                                        <div class="col">
                                            <label for="color" class="form-label fw-bold">Color</label>
                                            <input type="text" name="color" id="color" class="form-control" required>
                                        </div>
                                        <div class="col">
                                            <label for="price" class="form-label fw-bold">Price</label>
                                            <input type="number" name="price" id="price" class="form-control" required>
                                        </div>
                                        <div class="col">
                                            <label for="quantity" class="form-label fw-bold">Quantity</label>
                                            <input type="number" name="quantity" id="quantity" class="form-control"
                                                max="20" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="content" class="form-label fw-bold">Product Content</label>
                                    <textarea name="content" id="content" class="form-control" rows="20"
                                        style="resize:none;" required></textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="imageList" class="form-label fw-bold">Attachments</label>
                                    <input type="file" name="imageList" id="imageList" class="form-control" multiple
                                        required>
                                </div>

                                <br>
                                <div class="d-flex justify-content-end">
                                    <button type="submit" class="btn btn-dark">Add New Products</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </form>
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
                        <div class="container">
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="category2" class="form-label fw-bold">Category</label>
                                        <select name="category2" id="category2" class="form-select" required>
                                            <option value="1">Electric Guitars</option>
                                            <option value="2">Acoustic Guitars</option>
                                            <option value="3">Basses</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="type2" class="form-label fw-bold">Type</label>
                                        <select name="type2" id="type2" class="form-select" required>
                                            <option value="1">Solid Body</option>
                                            <option value="2">Hollow & Semi-Hollow Body</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="selectBrand2" class="form-label fw-bold">Brand</label>
                                        <select name="selectBrand2" id="selectBrand2" class="form-select" required>
                                            <option value="1">Fender</option>
                                            <option value="2">Gibson</option>
                                            <option value="3">Rickenbacker</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectModel2" class="form-label fw-bold">Model</label>
                                        <select name="selectModel2" id="selectModel2" class="form-select" required>
                                            <option value="1">Stratocaster</option>
                                            <option value="2">Telecaster</option>
                                            <option value="3">Jazzmaster</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="selectName2" class="form-label fw-bold">Choose Product</label>
                                        <select name="selectName2" id="selectName2" class="form-select" required>
                                            <option value="1">American Vintage II Stratocaster</option>
                                            <option value="2">American Professional II Stratocaster</option>
                                            <option value="3">Eric Clapton Stratocaster</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectColor2" class="form-label fw-bold">Choose Color</label>
                                        <select name="selectColor2" id="selectColor2" class="form-select" required>
                                            <option value="1">Olympic White</option>
                                            <option value="2">Fiesta Red</option>
                                            <option value="3">Pewter</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <form action="#" method="post" enctype="multipart/form-data">
                                <div class="mb-3">
                                    <label for="name2" class="form-label fw-bold">Product Name</label>
                                    <input type="text" name="name" id="name2" class="form-control" required>
                                    <input type="hidden" name="productNo" value="">
                                </div>
                                <div class="mb-3">
                                    <div class="row row-cols-1 row-cols-md-3 g-3">
                                        <div class="col">
                                            <label for="color" class="form-label fw-bold">Color</label>
                                            <input type="text" name="color" id="color" class="form-control" required>
                                        </div>
                                        <div class="col">
                                            <label for="price" class="form-label fw-bold">Price</label>
                                            <input type="number" name="price" id="price" class="form-control" required>
                                        </div>
                                        <div class="col">
                                            <label for="quantity" class="form-label fw-bold">Quantity</label>
                                            <input type="number" name="quantity" id="quantity" class="form-control"
                                                max="20" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="content" class="form-label fw-bold">Product Content</label>
                                    <textarea name="content" id="content" class="form-control" rows="20"
                                        style="resize:none;" required></textarea>
                                </div>
                                <div class="mb-3" id="oldAttachment2">
                                    <div class="input-group">
                                        <span class="input-group-text">Existing Attachments</span>
                                        <input type="text" name="oldImage" id="oldImageList2" class="form-control"
                                            value="" readonly>
                                        <button type="button" class="btn btn-outline-dark"
                                            onclick="modifyPics();">변경</button>
                                    </div>
                                </div>
                                <div class="mb-3" id="newAttachment2">
                                    <label for="imageList2" class="form-label fw-bold">New Attachments</label>
                                    <input type="file" name="imageList" id="imageList2" class="form-control" multiple
                                        required>
                                </div>
                                <br>
                                <div class="d-flex justify-content-end">
                                    <button type="submit" class="btn btn-dark">Modify Product Info</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </form>
                        </div>
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
                        <div class="container">
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="category3" class="form-label fw-bold">Category</label>
                                        <select name="category3" id="category3" class="form-select" required>
                                            <option value="1">Electric Guitars</option>
                                            <option value="2">Acoustic Guitars</option>
                                            <option value="3">Basses</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="type3" class="form-label fw-bold">Type</label>
                                        <select name="type3" id="type3" class="form-select" required>
                                            <option value="1">Solid Body</option>
                                            <option value="2">Hollow & Semi-Hollow Body</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="selectBrand3" class="form-label fw-bold">Brand</label>
                                        <select name="selectBrand3" id="selectBrand3" class="form-select" required>
                                            <option value="1">Fender</option>
                                            <option value="2">Gibson</option>
                                            <option value="3">Rickenbacker</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectModel3" class="form-label fw-bold">Model</label>
                                        <select name="selectModel3" id="selectModel3" class="form-select" required>
                                            <option value="1">Stratocaster</option>
                                            <option value="2">Telecaster</option>
                                            <option value="3">Jazzmaster</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="selectName3" class="form-label fw-bold">Choose Product</label>
                                        <select name="selectName3" id="selectName3" class="form-select" required>
                                            <option value="1">American Vintage II Stratocaster</option>
                                            <option value="2">American Professional II Stratocaster</option>
                                            <option value="3">Eric Clapton Stratocaster</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectColor3" class="form-label fw-bold">Choose Color</label>
                                        <select name="selectColor3" id="selectColor3" class="form-select" required>
                                            <option value="1">Olympic White</option>
                                            <option value="2">Fiesta Red</option>
                                            <option value="3">Pewter</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="table-area">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="col-md-1">Product</th>
                                            <th colspan="2"></th>
                                            <th>Date</th>
                                        </tr>
                                    </thead>
                                    <tbody id="whatToDelete3">
                                        <tr>
                                            <td>
                                                <img class="img-thumbnail" src="pics/1-1.jpg" alt="thumbnail">
                                            </td>
                                            <td>
                                                <div class="fs-5"><span>Fender</span><span> American Standard II
                                                        Stratocaster</span></div>
                                            </td>
                                            <td>
                                                3-Tone Sunburst
                                                <div><strong>2,500,000 원</strong></div>
                                            </td>
                                            <td>
                                                2022-12-30
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <form action="#" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="productNo" id="productNo3" value="">
                                <div class="d-flex justify-content-end">
                                    <button type="submit" class="btn btn-dark">Delete Products</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal: Member -->

    </div>
</body>
<jsp:include page="../common/footer.jsp"/>
<script src="resources/js/admin.js"></script>

</html>