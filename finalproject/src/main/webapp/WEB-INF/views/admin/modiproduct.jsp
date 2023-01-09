<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modi Product</title>
</head>
<body>

<div class="container">
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="category2" class="form-label fw-bold">Category</label>
                                        <select name="category" id="category2" class="form-select" required>
                                            <option value="1">Electric Guitars</option>
                                            <option value="2">Acoustic Guitars</option>
                                            <option value="3">Basses</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="type2" class="form-label fw-bold">Type</label>
                                        <select name="type" id="type2" class="form-select" required>
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
                                        <select name="brand" id="selectBrand2" class="form-select" required>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectModel2" class="form-label fw-bold">Model</label>
                                        <select name="model" id="selectModel2" class="form-select" required>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="selectName2" class="form-label fw-bold">Choose Product</label>
                                        <select name="groupNo" id="selectName2" class="form-select" required>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectColor2" class="form-label fw-bold">Choose Color</label>
                                        <select name="productNo" id="selectColor2" class="form-select" required>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <form action="changeToProduct.ad" method="post" enctype="multipart/form-data">
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
                                <!--
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
                                -->
                                <br>
                                <div class="d-flex justify-content-end">
                                    <button type="submit" class="btn btn-dark">Modify Product Info</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </form>
                        </div>

</body>
</html>