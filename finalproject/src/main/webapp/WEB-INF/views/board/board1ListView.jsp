<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .content {
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #boardList {text-align:center;}
        #boardList>tbody>tr:hover {cursor:pointer;}

        #pagingArea {width:fit-content; margin:auto;}
        
       
        .select {width:20%;}
        .text {width:53%;}
        .searchBtn {width:20%;}
    </style>
</head>
<body>
    
<%--     <jsp:include page="../common/header.jsp" /> --%>
	<%@include file="../common/header.jsp" %>

    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2>ANNOUNCEMENTS</h2>
            <br>
            <c:if test="${not empty loginUser }">
            <!-- 로그인 후 상태일 경우만 보여지는 글쓰기 버튼 -->
            <form action="insert.bo" method="Get">
            <!--<a class="btn btn-secondary" style="float:right;" href="insert.bo">글쓰기</a>-->
            <input type="hidden" name="boardCate" id="token" value="1">
            <button class="btn btn-secondary" style="float:right;" type="submit">글쓰기</button>
            </form>
            </c:if>
            <br>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>조회수</th>
                        <th>작성일</th>
                        <th>첨부파일</th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach var="b" items="${list}">
                    <tr>
                        <td>${b.boardNo }</td>
                        <td>${b.boardTitle }</td>
                        <td>${b.boardWriter }</td>
                        <td>${b.count }</td>
                        <td>${b.createDate }</td>
                        <td>
                        	<c:if test="${not empty b.originName }">❤
                        			
                        	</c:if>
                        </td>
                    </tr>
                   </c:forEach>
                   
                </tbody>
            </table>
            <br>
            
            <script>
            	$(function(){
            		$("#boardList>tbody tr").click(function(){
            			//console.log($(this).children().eq(0).text());
            			location.href="detail.bo?boardCate=1&bno="+$(this).children().eq(0).text();
            			<!--location.href="andetail.bo?bno="+${boardNo};-->
            			
            		})
            	})
            
            </script>
            
            

            <div id="pagingArea">
                <ul class="pagination">
                	<!-- currentPage가 1이면 숨기기 -->
                	<c:choose>
                		<c:when test="${pi.currentPage ne 1 }">
                			<li class="page-item"><a class="page-link" href="list.bo?currentPage=${pi.currentPage-1}&boardCate=1">Previous</a></li>
                		</c:when>
	                    <c:otherwise><!-- currentPage가 1일경우 (1페이지) -->
	                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:otherwise>
                	</c:choose>
                	<c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="p">
	                  <c:choose>
                		<c:when test="${pi.currentPage eq p }">
                			<li class="page-item disabled"><a class="page-link" href="list.bo?currentPage=${p}">${p}</a></li>
                		</c:when>	
                		<c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="list.bo?currentPage=${p}&boardCate=1">${p}</a></li>
                		</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
                    <!-- currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${pi.currentPage eq pi.maxPage }">
		                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="list.bo?currentPage=${pi.currentPage +1}&boardCate=1">Next</a></li>
						</c:otherwise>                    
                    </c:choose>
                </ul>
            </div>
			
            <br clear="both"><br>

            
            <br><br>
        </div>
        <br><br>

    </div>
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>c