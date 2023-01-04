$("#selectNameA").show();
$("#selectNameB").hide();
$("#oldAttachment2").show();
$("#newAttachment2").hide();
$("#modelsList2").hide();

$("#selectName").on("change", function () {
    if ($("#selectName").val() == "a") {
        $("#selectNameA").show();
        $("#selectNameB").hide();
        $("#nameA").attr("disabled", false);
        $("#nameB").attr("disabled", true);
    }
    if ($("#selectName").val() == "b") {
        $("#selectNameA").hide();
        $("#selectNameB").show();
        $("#nameA").attr("disabled", true);
        $("#nameB").attr("disabled", false);
    }
});

$("#brandsList2").on("change", function() {
    $("#modelsList2").show();
});

function modifyPics() {
    $("#oldAttachment2").hide();
    $("#newAttachment2").show();
}