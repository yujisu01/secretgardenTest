<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html lang="en">
    <head>
    <%@ include file="/resources/includes/header.jsp" %>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Secret Garden</title>
        <!-- Favicon-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap-datepicker.css">
        <link rel="icon" type="${ctx}/resources/assets/image/x-icon" href="${ctx}/resources/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${ctx}/resources/css/style.css" rel="stylesheet" />
        <link href="${ctx}/resources/css/index.css" rel="stylesheet" />
        <link href="${ctx}/resources/js_old/script.js" rel="stylesheet" />
        
        <style type="text/css">
        	.row{
        		text-align: center;
        	}
        	.pull-right {
			  width: 300px;
			  margin-left: auto;
			  margin-right: auto;
			  
			  
			}
			.pull-right.paginate_button{
				color: #bbb;
			}
        </style>
    </head>
    <body id="page-top">

        <header class="listhead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">QnA</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                    </div>
                </div>
            </div>
        </header>
       
       
        <!-- boardList -->
         <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           
                            <button id="regBtn" type="button" class="btn btn-xs pull-right">글쓰기</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr class="success">
                                        <th>#번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>조회수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${list }" var="board">
                                		<tr>
                                			<td class="danger">${board.bno }</td>
                                			<td><a href="${ctx}/secretgarden/board/read?pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&bno=${board.bno}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">${board.title}</a>
                                				<b>[${board.replyCnt}]</b>
                                			</td>
                                			<td>${board.writer}</td>
                                			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${board.regdate}"/></td>
                                			<td><span class="badge bg-ref">${board.viewcnt}</span></td>
                                		</tr>
                                	</c:forEach>
                                </tbody>
                            </table> <!-- table태그 끝 -->
                       <div class="row">
                       	<div class="col-lg-12">
                       		<form id="searchForm" action="${ctx }/secretgarden/board/list" method="get">
                       			<select name="type">
                       				<option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>검색</option>
                       				<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                       				<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                       				<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                       				<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목+내용</option>
                       				<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목+작성자</option>
                       				<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':'' }"/>>제목+내용+작성자</option>
                       			</select>
                       			<input type="text" name="keyword" placeholder="검색어 입력" value='<c:out value="${pageMaker.cri.keyword}"/>'/>
                       			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
                       			<input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount}"/>'/>
                       			<button class="btn btn-default">Search</button>
                       		</form>
                       	</div>
                       </div>
                <div class="pull-right">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>
					</ul>
				</div>
				<!--  end Pagination -->

		    <!-- 실제 페이지를 클릭하면 동작을 하는 부분  -->
			<form id='actionForm' action="${ctx}/secretgarden/board/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
				<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'>
			</form>                            
                            			<!-- Modal  추가 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">처리가 완료되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
<script type="text/javascript">
	$(document).ready(function() {
//		var result = '<c:out value="${result}"/>';
		var result = "${result}";
		
		// 파라메터에 따라서 모달창을 보여주거나 내용을 수정한 뒤 보이도록 작성하기 위함.
		checkModal(result);
		
		// history 객체에 현재 저장된 데이터를 변경 (새 기록을 작성하는 대신 사용자의 동작에 따라 현재 히스토리 엔트리의 URL을 업데이트 하려고 할 때 매우 유용)
		// window.history.replace(data, title [, url]);
		// 사용 예) window.history.replaceState("http://example.ca", "Sample Title", "/example/path.html");
	    // 이 예제는 현재 기록, 주소 표시 줄 및 페이지 제목을 바꿉니다.
		history.replaceState({}, null, null);
		
		function checkModal(result) {
			if (result === "" || history.state) {
				return;
			}

			if (parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
			}

			$("#myModal").modal("show");
	    }
		
		$("#regBtn").on("click", function() {
			self.location = "${ctx}/secretgarden/board/register";
		});
		
		// 페이지 번호를 클릭하면 처리하는 부분
		var actionForm = $("#actionForm");
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault(); // <a>태그를 클릭해도 페이지 이동이 없도록 처리
			
			console.log("click");

			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});

		$(".move").on("click", function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='bno' value='"
											+ $(this).attr("href")
											+ "'>");
			actionForm.attr("action", "${ctx}/secretgarden/board/read");
			actionForm.submit();
		});

		var searchForm = $("#searchForm");

		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");
			
			e.preventDefault();

			searchForm.submit();

		});
	});
</script>
        
<%@ include file="/resources/includes/footer.jsp" %>