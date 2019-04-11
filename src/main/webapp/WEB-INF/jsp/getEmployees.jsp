<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page session="false"%>
<html>
<head>
<title>Show Data</title>
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
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Id</th>
                    <th scope="col">Phone Number</th>
                  </tr>
                </thead>
                <tbody>
	                <c:forEach var="listValue" items="${employees}" varStatus="loop">
		                  <tr>
		                    <th scope="row">${loop.count}</th>
		                    <td>${listValue.name}</td>
		                    <td>${listValue.empId}</td>
		                    <td>${listValue.phoneNo}</td>
		                  </tr>
					</c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%-- <ul>
		<c:forEach var="listValue" items="${employees}" varStatus="loop">
			<li>${listValue.name}</li>
			<li>${loop.count}</li>
		</c:forEach>
	</ul> --%>
  
  <form id="logoutForm" method="POST" action="${contextPath}/logout">
 		 <sec:csrfInput/>
  </form>
  
  <sec:csrfInput /> 
  
</body>
</html>