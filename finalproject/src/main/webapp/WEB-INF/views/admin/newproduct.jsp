<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Product</title>
</head>
<body>

<form action="addToProduct.ad" method="post" enctype="multipart/form-data">
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
                                            <select name="brand" id="selectBrand" class="form-select" required>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <label for="selectModel" class="form-label fw-bold">Model</label>
                                            <select name="model" id="selectModel" class="form-select" required>
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
                                            <input type="text" name="name" id="nameA" class="form-control" >
                                        </div>
                                        <div class="col" id="selectNameB">
                                            <label for="nameB" class="form-label fw-bold">Choose Existing Name</label>
                                            <select name="groupNo" id="nameB" class="form-select" >
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

</body>
</html>