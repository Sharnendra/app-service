<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;">Add New Employee</h3>

	div id="addEmployee">
		<form:form action="/addNewEmployee" method="post"
			modelAttribute="emp">
			<p>
				<label>Enter Employee Id</label>
				<form:input path="empId" />
			</p>
			<p>
				<label>Enter Name</label>
				<form:input path="empName" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form:form>
	</div>
</body>
</html> --%>



<html>
<head>
<title>Add Data</title>
<link href="/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="/css/custom.css" rel="stylesheet">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/js/custom.js"></script>
</head>
<body>
	<div id="wrapper" class="animate">
    <nav class="navbar header-top fixed-top navbar-expand-lg  navbar-dark bg-dark">
      <span class="navbar-toggler-icon leftmenutrigger"></span>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/welcome">${name}</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav animate side-nav">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/welcome">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/addNewEmployee">Add Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/getEmployees">Show Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="document.forms['logoutForm'].submit()">Logout</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-md-auto d-md-flex">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/welcome">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/addNewEmployee">Add Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/getEmployees">Show Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="document.forms['logoutForm'].submit()">Logout</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Form Registration</h5>
              <form action="" method="post">
               <sec:csrfInput /> 
	              <table class="table">
	                <tbody>
	                  <tr>
	                    <td>
	                    	<label>Enter Employee Id : </label>
	                    	<input type="text" name="empId" placeholder="Employee Id"/>
						</td>
	                    <td>
	                    	<label>Enter Name : </label>
	                    	<input type="text" name="name" placeholder="Employee Name"/>
	                    </td>
	                  </tr>
	                  <tr>
	                  	<td>
	                    	<label>Enter Contact no. : </label>
	                    	<input type="text" name="phoneNo" placeholder="Phone Number"/>
	                    </td>
	                    <td>
	                    	<input type="SUBMIT" value="Submit" />
	                    </td>
	                  </tr>
	                </tbody>
	              </table>
              </form>
            </div>
          </div>
        </div>
      </div>
  </div>
  <form id="logoutForm" method="POST" action="${contextPath}/logout">
  		<sec:csrfInput/>
  </form>
 
</body>
</html>
