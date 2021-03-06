<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--/////////////////////////////////////////////////////
//	INDEX JSP
///////////////////////////////////////////////////////// -->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ---- CSS LINKS --------------------------------- -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
	<title>Ninja Gold</title>
</head>
<body>
    	<!-- //// HEADER //////// -->
	<header>
		<div class="navbar navbar-dark bg-dark box-shadow">
			<div class="container d-flex justify-content-between">
				<a href="/" class="navbar-brand d-flex align-items-center"> <strong
					class="text-warning">NINJA GOLD</strong>
				</a> <a class="btn btn-secondary " href="/">HOME</a>
			</div>
		</div>
	</header>

	<!-- //// MAIN AREA //////// -->
	<main role="main">
		<div class="container mt-4">
			<h2>
				Your Gold: <c:out value="${ ninjagold.getGold() }"></c:out>
			</h2>
			<div class="row justify-content-around">
				<form action="/gold/farm" method="post"
					class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>Farm</h2>
					<p>(earns 10-20 gold)</p>
					<input class="btn btn-success" type="submit" value="Find Gold!">
				</form>
				<form action="/gold/cave" method="post"
					class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>Cave</h2>
					<p>(earns 5-10 gold)</p>
					<input class="btn btn-success" type="submit" value="Find Gold!">
				</form>
				<form action="/gold/house" method="post"
					class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>House</h2>
					<p>(earns 2-5 gold)</p>
					<input class="btn btn-success" type="submit" value="Find Gold!">
				</form>
				<form action="/gold/casino" method="post"
					class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>Casino!</h2>
					<p>(earns/takes 0-50 gold)</p>
					<input class="btn btn-success" type="submit" value="Find Gold!">
				</form>
			</div>
			<br>
			<h2>Activities</h2>
			<div class="row">
				<div class="col round bg-secondary">
					<c:forEach var="event" items="${ events }">
						<p>${ event }</p>
					</c:forEach>
				</div>
			</div>

		</div>
	</main>


    <!-- ---- JAVASCRIPT LINKS ---------------------------- -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>