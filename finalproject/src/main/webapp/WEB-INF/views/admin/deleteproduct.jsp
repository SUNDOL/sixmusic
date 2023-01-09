<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Product</title>
</head>
<body>

<div class="container">
                            <div class="mb-3">
                                <div class="row row-cols-1 row-cols-md-2 g-3">
                                    <div class="col">
                                        <label for="category3" class="form-label fw-bold">Category</label>
                                        <select name="category" id="category3" class="form-select" required>
                                            <option value="1">Electric Guitars</option>
                                            <option value="2">Acoustic Guitars</option>
                                            <option value="3">Basses</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="type3" class="form-label fw-bold">Type</label>
                                        <select name="type" id="type3" class="form-select" required>
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
                                        <select name="brand" id="selectBrand3" class="form-select" required>
                                            <option value="1">Fender</option>
                                            <option value="2">Gibson</option>
                                            <option value="3">Rickenbacker</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectModel3" class="form-label fw-bold">Model</label>
                                        <select name="model" id="selectModel3" class="form-select" required>
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
                                        <select name="groupNo" id="selectName3" class="form-select" required>
                                            <option value="1">American Vintage II Stratocaster</option>
                                            <option value="2">American Professional II Stratocaster</option>
                                            <option value="3">Eric Clapton Stratocaster</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <label for="selectColor3" class="form-label fw-bold">Choose Color</label>
                                        <select name="productNo" id="selectColor3" class="form-select" required>
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
                            <form action="removeProduct.ad" method="post" >
                                <input type="hidden" name="productNo" id="productNo3" value="">
                                <div class="d-flex justify-content-end">
                                    <button type="submit" class="btn btn-dark">Delete Products</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </form>
                        </div>

</body>
</html>