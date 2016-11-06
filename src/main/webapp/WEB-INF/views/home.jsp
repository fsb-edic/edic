<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
    <div class="navbar navbar-default navbar-static-top">
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
              <a href="#">Home</a>
            </li>
            <li>
              <a href="logout">logout</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="https://triestofindloveinabigworld.files.wordpress.com/2013/05/barbara-2.jpg"
            class="img-responsive">
          </div>
          <div class="col-md-6">
            <h1>Личный кабинет</h1>
            <h3>Теперь ты - один из нас!&nbsp;</h3>
            <p>Все члены нашей школы привестствуют друг друга поднимая два пальца вверх.
              Помни и соблюдай!
              <br></p>
           
            <p>
              <b>Твое имя:  <spring:message text="${user.name}" /></b>
            </p>
            <p>
              <b>Твое вес:  <spring:message text="${user.weight}" /> кг</b>
            </p>
             <p>
            Первая часть секрета: ${firstSecret}
             </p>
							<c:if test="showSectet"><p>Вторая часть секрета ${secondSecret}</p></c:if>
							
			   <p>
              <br>Курсы еще не начались, но как только набор группы произойдет, то ты получишь
              доступ &nbsp;к &nbsp;секрету (состоящему из двух частей) &nbsp;нашей &nbsp;методики!</p>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>