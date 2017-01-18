<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
aa
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-md-9" style="max-width:100%;white-space: nowrap;overflow: hidden; ">
			<c:forEach items="${files }" var="file">
				<img src="/resources/FileUpload/${file }" alt="img" />
			</c:forEach>
		</div>
		
		 <div class="col-md-3">
            <div class="sidebar-nav-fixed pull-right affix">
                <div class="well">
                    <ul class="nav ">
                        <li class="nav-header">Sidebar</li>
                        <li class="active"><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li class="nav-header">Sidebar</li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li class="nav-header">Sidebar</li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                        <li><a href="#">Link</a>
                        </li>
                    </ul>
                </div>
                <!--/.well -->
            </div>
            <!--/sidebar-nav-fixed -->
		
	</div>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>