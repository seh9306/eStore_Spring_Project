<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-wrapper">

	<div class="container">
		<h1>Update Product</h1>
		<p class="lead">Modify the below information to update a product:</p>
		<sf:form
			action="${pageContext.request.contextPath }/admin/productInventory/updateProduct?${_csrf.parameterName }=${_csrf.token }"
			method="post" modelAttribute="product" enctype="multipart/form-data">
			<sf:hidden path="id"/>
			<div class="form-group">
				<label for="name">Name</label>
				<sf:input path="name" id="name" class="form-control" />
				<sf:errors path="name" cssStyle="color:#ff0000;"/>
			</div>

			<div class="form-group">
				<label for="category">Category: </label>
				<sf:radiobutton path="category" id="category" value="컴퓨터" />
				컴퓨터
				<sf:radiobutton path="category" id="category" value="가전" />
				가전
				<sf:radiobutton path="category" id="category" value="잡화" />
				잡화
			</div>

			<div class="form-group">
				<label for="description">Description: </label>
				<sf:textarea path="description" id="description"
					class="form-control" />
			</div>

			<div class="form-group">
				<label for="price">Price: </label>
				<sf:input path="price" id="price" class="form-control" />
				<sf:errors path="price" cssStyle="color:#ff0000;"/>				
			</div>

			<div class="form-group">
				<label for="unitInStock">unitInStock: </label>
				<sf:input path="unitInStock" id="unitInStock" class="form-control" />
				<sf:errors path="unitInStock" cssStyle="color:#ff0000;"/>
			</div>

			<div class="form-group">
				<label for="manufacturer">manufacturer: </label>
				<sf:input path="manufacturer" id="manufacturer" class="form-control" />
				<sf:errors path="manufacturer" cssStyle="color:#ff0000;"/>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-lable" for="file">Upload a
					Picture</label>
				<div class="col-md-7">
					<sf:input type="file" path="file" id="file"
						class="form-control input-sm" />
					<div class="has-error">
						<sf:errors path="file" class="help-inline" />
					</div>
				</div>
			</div>
			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/admin/productInventory"/>"
				class="btn btn-default">Cancel</a>

		</sf:form>
		<br />
	</div>
</div>