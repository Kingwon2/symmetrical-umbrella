<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="EUC-KR">
	<title>Twitter Client</title>
	<c:url value='/' var='url'></c:url>
   	<link href='https://fonts.googleapis.com/css?family=Quicksand:300,400' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Lato:400,300' rel='stylesheet' type='text/css'>
	<link href=${url}resources/css/twiter.css" rel="stylesheet">
    
</head>
<body>
	
		
		<ul class="timeline">
			<li>
				<div class="avatar">
          <img src="http://www.croop.cl/UI/twitter/images/doug.jpg">
					<div class="hover">
						<div class="icon-twitter"></div>
					</div>
				</div>
				<div class="bubble-container">
					<div class="bubble">
					<div class="retweet">
						<div class="icon-retweet"></div>
					</div>
						<h3>@russel</h3> retweeted <h3>@doug</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					
					<div class="arrow"></div>
				</div>
			</li>
			<li>
				<div class="avatar">
					<img src="http://www.croop.cl/UI/twitter/images/carl.jpg">
					<div class="hover">
						<div class="icon-twitter"></div>
					</div>
				</div>
				<div class="bubble-container">
					<div class="bubble">
						<h3>@carlf</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					<div class="arrow"></div>
				</div>
			</li>
			<li>
				<div class="avatar">
					<img src="http://www.croop.cl/UI/twitter/images/russel.jpg">
					<div class="hover">
						<div class="icon-twitter"></div>
					</div>
				</div>
				<div class="bubble-container">
					<div class="bubble">
					<h3>@russel</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					<div class="arrow"></div>
				</div>
			</li>
			<li>
				<div class="avatar">
					<img src="http://www.croop.cl/UI/twitter/images/carl.jpg">
					<div class="hover">
						<div class="icon-twitter"></div>
					</div>
				</div>
				<div class="bubble-container">
					<div class="bubble">
						<h3>@carlf</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					<div class="arrow"></div>
				</div>
			</li>
		</ul>

	</div>
</body>
</html>