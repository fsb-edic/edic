<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                <a href="#about">О школе</a>
              </li>
              <li>
                <a href="reg">Регистрация</a>
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
          <div class="col-md-4">
            <img src="http://theydiffer.com/wp-content/uploads/2016/06/Bulimia.jpg"
            class="img-responsive">
          </div>
          <div class="col-md-8">
            <h1 class="text-primary" id="about">Первая школа булемии "Эдик"</h1>
            <h3>О школе</h3>
            <p>В современном мире станадрты красоты стали практиктически недостежимы.
              Женщины тратят пол жизни в спортзале изнуряя себя тренировками . Они сидят
              на суровых диетах &nbsp;и &nbsp;проходят стороной булочные и кондитерские!
              Вся их жизнь - одно большое страдание!
              <br>Но при всех этих усилиях, женщины достаточно часто не довольны результатом.
              <br>Но выход есть! Наша школа булемии "Эдик" разработала уникальную методику,
              позволяющих добится потрясаэщих результатов в рекордно короткие сроки!
              <br>Следуя простой программе и не в чем себе не отказывая, вы сможете стать
              богиней красоты и изящества!</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <img src="https://content.onliner.by/news/2016/01/default/711e1307e8087ce5bce66c9914f10dea.jpg"
            class="img-responsive">
          </div>
          <div class="col-md-8">
            <h1 class="text-primary">Новая программа для мужчин!</h1>
            <h3>Только в ноябре!</h3>
            <p>Бухаешь!?? Пьешь всякую дрянь в подворотне?!? &nbsp;Не можешь встать с
              утра?? Уже болит печерь??
              <br>Выход есть!
              <br>Наша школа "Эдик" разработала программу и для тебя! Пройдя у нас курс
              и выуча простые праваила, ты слегкостью сможешь пить много и без вреда
              здоровью!</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-primary">Логин</h1>
            <form class="form-horizontal" role="form" action="authentication"
            method="POST">
              <div class="form-group" id="signup">
                <div class="col-sm-2">
                  <label for="inputUsername" class="control-label">Username</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputUsername" name="name"
                  placeholder="Username">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Password</label>
                </div>
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="inputPassword3" name="pass"
                  placeholder="Password">
                </div>
                <c:if test="${error != null}">
                  <div class="col-sm-12  has-error">
                    <label class="control-label ">${error}</label>
                  </div>
                </c:if>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default">Sign in</button>
                </div>
              </div>
            </form>
          </div>
          <div class="col-md-6"></div>
        </div>
      </div>
    </div>
  </body>

</html>