<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/ckeditor/ckeditor.js"></script>
<meta charset="UTF-8">

<div class="container">
	<form action="/pboard/write" method="post">
		<table class="table">
			<tr>
				<td>글제목</td>
				<td colspan="3"><input type="text" name="subject"
					maxlength="50" size="50"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="nick" maxlength="20" size="20"></td>
			</tr>
			<tr>
				<td>본문</td>
				<td colspan="3"><textarea name="content" class="ckeditor"></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right"><input type="submit"
					class="btn btn-default" value="글 올리기"></td>
			</tr>
		</table>
	</form>
</div>