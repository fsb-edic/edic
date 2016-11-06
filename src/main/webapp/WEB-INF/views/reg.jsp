<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
    rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div class="cover">
      <div class="navbar">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="collapse navbar-collapse" id="navbar-ex-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="index">О школе</a>
              </li>
              <li>
                <a href="#">Регистрация</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="cover-image" style="background-image : url('https://s-media-cache-ak0.pinimg.com/originals/02/cd/a3/02cda31280116acf16ffb8e0480c749a.jpg')"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h1 class="text-inverse">EDIC</h1>
            <p class="text-inverse">The First School of Bulimia</p>
            <br>
            <br>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-primary">Регистрация</h1>
           <form:form  class="form-horizontal" role="form" method="post" modelAttribute="user">
						<div class="form-group">
							<div class="col-sm-2">
								<label class="control-label">Username<br>
								</label>
							</div>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" placeholder="username"
									path="name" />
							</div>
							<div class="col-sm-12  has-error">
								<form:errors path="name"></form:errors>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-2">
								<label for="inputPassword3" class="control-label">Password</label>
							</div>
							<div class="col-sm-10">
								<form:input type="password" class="form-control" id="inputPassword3"
									placeholder="Password" path="pass"/>
							</div>
							<div class="col-sm-12  has-error">
								<form:errors path="pass"></form:errors>
							</div>
						</div>
						
					
						<div class="form-group">
							<div class="col-sm-2">
								<label class="control-label">Your Weight</label>
							</div>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" placeholder="Weight"
									path="weight"/>
							</div>
							<div class="col-sm-12  has-error">
								<form:errors path="weight"></form:errors>
							</div>
						</div>
						<c:if test="${error != null}">
							<div class="col-sm-12  has-error">
								<label class="control-label ">${error}</label>
							</div>
						</c:if>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Registration</button>
							</div>
						</div>
					</form:form>
          </div>
          <div class="col-md-6">
            <img src="https://i.imgflip.com/1dmqr8.jpg" class="img-responsive">
          </div>
        </div>
      </div>
    </div>
  </body>

</html>