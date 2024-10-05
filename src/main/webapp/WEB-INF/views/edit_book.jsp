<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>
	<div class="container">
	
	<h4>New Book Info</h4>
	<form:form action="/bookmanagement/editbook" method="post" modelAttribute="book">
		
		<div class="mb-4">
		<div class="col-sm-3">
			<form:input type="hidden" class="form-control" path='code'></form:input>
		</div>
		</div>
		<div class="mb-4">
			<form:label path='name' class="form-label">Name</form:label>
		
		<div class="col-sm-3">
			<form:input type="text" class="form-control" path='name'></form:input>
		</div>
		</div>
		<div class="mb-4">
			<form:label path='price' class="form-label">Price</form:label>
		
		<div class="col-sm-3">
			<form:input type="text" class="form-control" path='price'></form:input>
		</div>
		</div>
		<div class="mb-4">
			<form:label path='author_id' class="form-label">Author</form:label>
		
		<div class="col-sm-3">
			<form:input type="text" class="form-control" path='author_id'></form:input>
		</div>
		</div>
		<form:select path='author_id'> 
				<form:option value='0'>Select Author</form:option>
				<c:forEach var='author' items='${selected_authors}'>
				<form:option value='${author.id}'>${author.name}</form:option>
				</c:forEach>
			</form:select>
		<div class="mb-4">
			<input type="submit" value="EditBook" class="btn-btn-primary">
		</div>
	</form:form>
	</div>
</body>
</html>