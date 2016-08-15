<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
	<head>
		<title>Spring MVC Registration Form Example</title>
	</head>
	<body>
		<h2>Employee Data Form</h2>
		<form:form method="POST" action="${contextPath}/dashboard" modelAttribute="userform">
	   		<table>
			    <tr>
			        <td width="127"><form:label path="empId">EMPLOYEE ID:</form:label></td>
			        <td width="102"><form:input path="empId" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="name">EMPLOYEE Name:</form:label></td>
			        <td><form:input path="name" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="age">EMPLOYEE Age:</form:label></td>
			        <td><form:input path="age" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="salary">EMPLOYEE Salary:</form:label></td>
			        <td><form:input path="salary" /></td>
			    </tr>
			    
			  <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table>  
		</form:form>
	</body>
</html>