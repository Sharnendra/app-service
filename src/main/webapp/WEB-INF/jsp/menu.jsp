<div style="border: 1px solid #ccc; padding: 2px; margin-bottom: 5px;">

	<a href="${pageContext.request.contextPath}/secure/welcome">Home</a> | &nbsp;

	<a href="${pageContext.request.contextPath}/secure/addNewEmployee">Add
        Employee</a> |   <a
        href="${pageContext.request.contextPath}/secure/getEmployees">Show
        Employees</a> |  <a onclick="document.forms['logoutForm'].submit()">Logout</a>

    <form id="logoutForm" method="POST" action="${contextPath}/logout">
    </form>

</div>