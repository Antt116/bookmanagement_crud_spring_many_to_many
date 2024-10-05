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
	<div class="text-danger">${error_msg}</div>
	<form:form action="/bookmanagement/addbook" method="post" modelAttribute="book">
		
		<div class="alert-danger col-sm-5">${error_msg}</div>
		<div class="mb-4">
			<form:label path='code' class="form-label">Code</form:label>
		
		<div class="col-sm-3">
			<form:input type="text" class="form-control" path='code'></form:input>
		</div>
		<form:errors path='code' cssClass='text-danger'></form:errors>
		</div>
		<div class="mb-4">
			<form:label path='name' class="form-label">Name</form:label>
		
		<div class="col-sm-3">
			<form:input type="text" class="form-control" path='name'></form:input>
		</div>
		<form:errors path='name' cssClass='text-danger'></form:errors>
		</div>
		<div class="mb-4">
			<form:label path='price' class="form-label">Price</form:label>
		
		<div class="col-sm-3">
			<form:input type="text" class="form-control" path='price'></form:input>
		</div>
		<form:errors path='price' cssClass='text-danger'></form:errors>
		</div>
		
		<div class="mb-4">
			<form:label path='authors' class="form-label">Author</form:label>
		<div class="col-sm-3">
			<form:select path='authors' multiple="true" class="form-control"> 
				
				<c:forEach var='author' items='${selected_authors}'>
				<form:option value='${author.id}'>${author.name}</form:option>
				</c:forEach>
			</form:select>
		</div>
		</div>
		<div class="mb-4">
			<input type="submit" value="AddBook" class="btn-btn-primary">
		</div>
	</form:form>
	</div>

</body>
</html>