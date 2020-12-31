<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="resources/script/bootstrap.min.js"></script>

<body>
	<div class="container">
        <h2>Modal Methods</h2>
        <p>The <strong>toggle</strong> method toggles the modal manually.</p>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-info btn-md" id="myBtn">Toggle Modal</button>

        <!-- Modal -->
        <div class="modal" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close"
							data-dismiss="modal">&times;</button>
                        <div class="modal-title">설정</div>
                    </div>
                    <div class="modal-body">
                        <section class="setting-list-section">
                            <div class="setting-list">
							<a href="">공지사항</a>
						</div>
                            <div class="setting-list">
							<a href="">문의하기 / FAQ</a>
						</div>
                            <div class="setting-list">
							<a href="">로그아웃</a>
						</div>
                            <div class="setting-list">
							<a href="">회원탈퇴</a>
						</div>
                        </section>
                        <section class="setting-list-section">
                            <div class="setting-list-title">관리자 메뉴</div>
                            <div class="setting-list">
							<a href="">회원관리</a>
						</div>
                            <div class="setting-list">
							<a href="">영화관리</a>
						</div>
                            <div class="setting-list">
							<a href="">통계보기</a>
						</div>
                        </section>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
							data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script>
		$(document).ready(function() {
			$("#myBtn").click(function() {
				$("#myModal").modal("toggle");
			});
		});
	</script>
</body>

</html>