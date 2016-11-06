<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head></head>
    <meta
    charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
      <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
      rel="stylesheet" type="text/css">
      <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
      rel="stylesheet" type="text/css">
      <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"></a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-ex-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li>
                <a href="reg">Регистрация</a>
              </li>
              <li>
                <a href="index">О школе<br></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="section">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h1 id="justice">"Эдик" приветствует тебя на своем борту!</h1>
              <img src="http://thestar.ie/wp-content/uploads/2015/10/PLUS-SIZE-MODEL-IN-ARMY-WEAR-304292.jpg"
              class="img-circle img-responsive">
            </div>
          </div>
        </div>
      </div>
      <div class="section">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <c:if test="${message != null}">
                <div class="col-sm-12  has-error">
                  <label class="control-label "></label>
                </div>
                <div class="alert alert-dismissable alert-success">
                  <strong>Well done!</strong>${message}</div>
              </c:if>
            </div>
          </div>
        </div>
      </div>
  </body>

</html>