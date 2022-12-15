<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/filter.js"></script>
</head>
<body>
<!-- Offcanvas: Filter Items -->
        <div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasFilter"
            aria-labelledby="offcanvasFilterLabel">
            <div class="offcanvas-header">
                <h2 class="offcanvas-title" id="offcanvasFilterLabel"><b>FILTER</b></h2>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">

                <div class="accordion" id="accordionFilter">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                aria-controls="panelsStayOpen-collapseOne">
                                Category
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                            aria-labelledby="panelsStayOpen-headingOne">
                            <div class="accordion-body" id="category-area">
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="true"
                                aria-controls="panelsStayOpen-collapseTwo">
                                Type
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show"
                            aria-labelledby="panelsStayOpen-headingTwo">
                            <div class="accordion-body">
                                <div class="form-check type1">
                                    <input class="form-check-input" type="radio" name="type" id="type1a" value="1">
                                    <label class="form-check-label" for="type1a">
                                        Solid Body
                                    </label>
                                </div>
                                <div class="form-check type1">
                                    <input class="form-check-input" type="radio" name="type" id="type1b" value="2">
                                    <label class="form-check-label" for="type1b">
                                        Hollow & Semi-Hollow Body
                                    </label>
                                </div>
                                <div class="form-check type2">
                                    <input class="form-check-input" type="radio" name="type" id="type2a" value="3">
                                    <label class="form-check-label" for="type2a">
                                        6-String
                                    </label>
                                </div>
                                <div class="form-check type2">
                                    <input class="form-check-input" type="radio" name="type" id="type2b" value="4">
                                    <label class="form-check-label" for="type2b">
                                        12-String
                                    </label>
                                </div>
                                <div class="form-check type2">
                                    <input class="form-check-input" type="radio" name="type" id="type2c" value="5">
                                    <label class="form-check-label" for="type2c">
                                        Acoustic-Electric
                                    </label>
                                </div>
                                <div class="form-check type2">
                                    <input class="form-check-input" type="radio" name="type" id="type2d" value="6">
                                    <label class="form-check-label" for="type2d">
                                        Classical & Nylon
                                    </label>
                                </div>
                                <div class="form-check type3">
                                    <input class="form-check-input" type="radio" name="type" id="type3a" value="7">
                                    <label class="form-check-label" for="type3a">
                                        Electric: 4-String
                                    </label>
                                </div>
                                <div class="form-check type3">
                                    <input class="form-check-input" type="radio" name="type" id="type3b" value="8">
                                    <label class="form-check-label" for="type3b">
                                        Electric: 5+ String
                                    </label>
                                </div>
                                <div class="form-check type3">
                                    <input class="form-check-input" type="radio" name="type" id="type3c" value="9">
                                    <label class="form-check-label" for="type3c">
                                        Acoustic
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="true"
                                aria-controls="panelsStayOpen-collapseThree">
                                Brands
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show"
                            aria-labelledby="panelsStayOpen-headingThree">
                            <div class="accordion-body">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand1" name="brand" value="1" >
                                    <label class="form-check-label" for="brand1">
                                        Fender
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand2" name="brand" value="2">
                                    <label class="form-check-label" for="brand2">
                                        Gibson
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand3" name="brand" value="3">
                                    <label class="form-check-label" for="brand3">
                                        Gretsch
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand4" name="brand" value="4">
                                    <label class="form-check-label" for="brand4">
                                        Rickenbacker
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand5" name="brand" value="5">
                                    <label class="form-check-label" for="brand5">
                                        Martin
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand6" name="brand" value="6">
                                    <label class="form-check-label" for="brand6">
                                        Taylor
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" id="brand7" name="brand" value="7">
                                    <label class="form-check-label" for="brand6">
                                        MusicMan
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true"
                                aria-controls="panelsStayOpen-collapseFour">
                                Model
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse show"
                            aria-labelledby="panelsStayOpen-headingFour">
                            <div class="accordion-body">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model1" name="model1" value="1">
                                    <label class="form-check-label" for="model1">
                                      Stratocaster
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model2" name="model2" value="2">
                                    <label class="form-check-label" for="model2">
                                      Telecaster
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model1" name="model3" value="3">
                                    <label class="form-check-label" for="model3">
                                      Jazzmaster
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model4" name="model4" value="4">
                                    <label class="form-check-label" for="model4">
                                      Les Paul
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model5" name="model5" value="5">
                                    <label class="form-check-label" for="model5">
                                      SG
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model6" name="model6" value="6">
                                    <label class="form-check-label" for="model6">
                                      ES
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model7" name="model7" value="7">
                                    <label class="form-check-label" for="model7">
                                      Jazz Bass
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="model1" name="model8" value="8">
                                    <label class="form-check-label" for="model8">
                                      D-28
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingFive">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="true"
                                aria-controls="panelsStayOpen-collapseFive">
                                Model
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse show"
                            aria-labelledby="panelsStayOpen-headingFive">
                            <div class="accordion-body" id="price-area">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</body>
</html>