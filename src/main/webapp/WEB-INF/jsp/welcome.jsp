<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page session="true"%>
<%-- <html>
<head>
<title>Welcome</title>
</head>
<body>
	<div style="border: 1px solid #ccc; padding: 2px; margin-bottom: 5px;">

	<a href="${pageContext.request.contextPath}/secure/welcome">Home</a> | &nbsp;

	<a href="${pageContext.request.contextPath}/secure/addNewEmployee">Add
        Employee</a> |   <a
        href="${pageContext.request.contextPath}/secure/getEmployees">Show
        Employees</a> |  <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        
    <p style="color: red; align:right;">Hello ${name}</p>

    <form id="logoutForm" method="POST" action="${contextPath}/logout">
    </form>

</div>
	<h3 style="color: red;">Hello ${name}</h3>
</body>
</html> --%>



<html>
<head>
<title>Profile</title>
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
              <h5 class="card-title">Try Other</h5>
              <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
              <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
              <!-- <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
              <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Try Other</h5>
              <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
              <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
             <!--  <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
              <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Try Other</h5>
              <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
              <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
              <!-- <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
              <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Try Other</h5>
              <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
              <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
              <!-- <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
              <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Try Other</h5>
              <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
              <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
              <!-- <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
              <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Try Other</h5>
              <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
              <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
              <!-- <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
              <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <form id="logoutForm" method="POST" action="${contextPath}/logout">
  		<sec:csrfInput/>
  </form>
  
  <sec:csrfInput/>  
  
</body>
</html>



