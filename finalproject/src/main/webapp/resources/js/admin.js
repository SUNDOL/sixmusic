$("#selectNameA").show();
$("#selectNameB").hide();
$("#oldAttachment2").show();
$("#newAttachment2").hide();
$("#modelsList2").hide();

$("#brandsList2").on("change", function() {
    $("#modelsList2").show();
});

function modifyPics() {
    $("#oldAttachment2").hide();
    $("#newAttachment2").show();
}

$("#newModel").on("show.bs.modal",()=>{
    $.ajax({
        url:"brandData.ad",
        success: result => {
            let str = "";
            result.forEach(e => {
                str+="<option value='"+e.brandNo+"'>"+e.name+"</option>";

            });
            console.log(str);
            $("#newModel #brandsList1").html(str);
        }
    });
});

$("#modiBrand").on("show.bs.modal",()=>{
    $.ajax({
        url:"brandData.ad",
        success: result => {
            let str = "";
            result.forEach(e => {
                str+="<option value='"+e.brandNo+"'>"+e.name+"</option>";

            });
            $("#modiBrand #brandsList").html(str);
        }
    });
});

$("#modiModel").on("show.bs.modal",()=>{
    $.ajax({
        url:"brandData.ad",
        success: result => {
            let str = "";
            result.forEach(e => {
                str+="<option value='"+e.brandNo+"'>"+e.name+"</option>";

            });
            $("#modiModel #brandsList2").html(str);

            $("#modiModel #brandsList2").change(()=>{
                console.log($("#modiModel #brandsList2 option:selected").val())
                $.ajax({
                    url:"modelData.ad",
                    data:{brandNo:$("#modiModel #brandsList2 option:selected").val()},
                    success: result2 => {
                        console.log(result2)
                        let str2 = "";
                        result2.forEach(e => {
                            str2+="<option value='"+e.modelNo+"'>"+e.name+"</option>";
            
                        });
                        $("#modiModel #modelsList22").html(str2);
                    }
                });
            });
        }
    });
});

// good
function adminCsInfo(currentPage) {
    $.ajax({
        url: "adminCsInfo.qa",
        data: {
            currentPage: currentPage
        },
        success: function (a) {
            console.log(a);
            var csInfo = "";
            var adminReply = "";
            var csCategory = "";
            var adminYn = "";
            if (a.question.length == 0) {
                csInfo += "<tr><td colspan='6' class='justify-content-center'><span>??????????????? ????????? ????????? ????????????</span></td><tr>"
                $("#cs-admin-foot").hide();
            } else {
                for (var i = 0; i < a.question.length; i++ ) {
                    if (a.question[i].questionCategory == 1) {
                        csCategory = "????????????";
                    } else if (a.question[i].questionCategory == 2) {
                        csCategory = "????????????";
                    } else if (a.question[i].questionCategory == 3) {
                        csCategory = "????????????";
                    } else if (a.question[i].questionCategory == 4) {
                        csCategory = "????????????";
                    } else {
                        csCategory = "????????????";
                    }
                    if (a.question[i].questionReply == null) {
                        adminYn = "N";
                        adminReply = "?????? ????????? ???????????? ?????? ???????????????. <a href='#' class='link-secondary' onclick='openAdminReplyModal(" + a.question[i].serviceNo + ")'>?????? ????????????</a>"
                    }
                    if (a.question[i].questionReply != null) {
                        adminYn = "Y";
                        adminReply = "<h5 class='fw-bold'>????????? ???????????????</h5>" + a.question[i].questionReply;

                    }
                    if (a.question[i].questionOriginName != null) {
                        csInfo += "<tr data-bs-toggle='collapse' href='#csCollapse" + i + "' role='button' aria-expanded='false' aria-controls='csCollapse" + i + "'>" 
                        + "<td>" + a.question[i].serviceNo + "</td>" 
                        + "<td>" + csCategory + "</td>" 
                        + "<td>" + a.question[i].questionTitle + "</td>"
                        + "<td>" + a.question[i].memberNickname + "</td>"
                        + "<td>" + a.question[i].createDate + "</td>"
                        + "<td>" + adminYn + "</td>"
                        + "</tr>"
                        + "<tr><td colspan='6'>" 
                        + "<div class='collapse' id='csCollapse" + i + "'>"
                        + "<div style='white-space:pre-wrap'>" + adminReply + "</div>"
                        + "<hr>"
                        + "<h5 class='fw-bold'>???????????? ?????? ???????????????</h5>"
                        + "<div style='white-space:pre-wrap'>" + a.question[i].questionContent + "</div><br>"
                        + "<div>????????????: <a class='link-secondary' href='" + a.question[i].questionFilePath + a.question[i].questionChangeName + "' target='_blank''>" + a.question[i].questionOriginName + "</a></div>"
                        + "</div>" 
                        + "</td></tr>";
                    }
                    if (a.question[i].questionOriginName == null) {
                        csInfo += "<tr data-bs-toggle='collapse' href='#csCollapse" + i + "' role='button' aria-expanded='false' aria-controls='csCollapse" + i + "'>" 
                        + "<td>" + a.question[i].serviceNo + "</td>" 
                        + "<td>" + csCategory + "</td>" 
                        + "<td>" + a.question[i].questionTitle + "</td>"
                        + "<td>" + a.question[i].memberNickname + "</td>" 
                        + "<td>" + a.question[i].createDate + "</td>"
                        + "<td>" + adminYn + "</td>" 
                        + "</tr>"
                        + "<tr><td colspan='6'>" 
                        + "<div class='collapse' id='csCollapse" + i + "'>"
                        + "<div style='white-space:pre-wrap;'>" + adminReply + "</div>"
                        + "<hr>"
                        + "<h5 class='fw-bold'>???????????? ?????? ???????????????</h5>"
                        + "<div style='white-space:pre-wrap'>" + a.question[i].questionContent + "</div><br>"
                        + "</div>" 
                        + "</td></tr>"; 
                    }
                }
                $("#cs-admin").show();
                csInfoPaging(a.pi);
            }
            $("#cs-admin").html(csInfo);
        },
        error: function() {
            console.log("?????? ?????? ??????");
        }
    });
};

function csInfoPaging(pi) {
    let currentPage = pi.startPage - 1;
    let str = "<li class='page-item'><a class='page-link' aria-label='Previous' onclick='myAccountCsInfo(" + currentPage + ");'><span aria-hidden='true'>&laquo;</span></a></li>";
    if (pi != null) {
        for (let i = pi.startPage; i < pi.endPage + 1; i++) {
            currentPage = i;
            str += "<li class='page-item'><a class='page-link' onclick='myAccountCsInfo(" + i + ");'>" + i + "</a></li>";
        }
    }
    currentPage = pi.endPage + 1;
    str += "<li class='page-item'><a class='page-link' aria-label='Previous' value='1'><span aria-hidden='true'";
    if (pi.endPage != pi.maxPage) {
        str += "onclick='myAccountCsInfo(" + currentPage + ");'";
    }
    str += ">&raquo;</span></a></li>";
    $("#cs-admin-footer").html(str);
};

function openAdminReplyModal(serviceNo) {
    const openAdminReplyModal = new bootstrap.Modal(document.getElementById('adminCsReply'));
    openAdminReplyModal.show(serviceNo);
    $("#adminCsServiceNo").val(serviceNo);
    console.log($("#adminCsServiceNo").val());
};