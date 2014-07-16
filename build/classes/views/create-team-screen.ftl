<!DOCTYPE html> 
<html>
	<head>
		<meta charset="UTF-8" />
	    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" media="screen" rel="stylesheet" />
	    <link href="css/bootstrap.min.css" rel="stylesheet" />
	    <link href="css/font-awesome.min.css" rel="stylesheet" />
	    <!-- Custom styles for our template -->
	    <link href="css/bootstrap-theme.css" media="screen" rel="stylesheet" />
	    <link href="css/main.css" rel="stylesheet" />
	</head>
	<body class="home">
		<div class="navbar navbar-inverse navbar-fixed-top headroom">
	        <div class="container">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse"
	                    data-target=".navbar-collapse">
	                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span
	                        class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="index.html"><img
	                    src="http://i.imgur.com/ze7FE4z.png"></a>
	            </div>
	            <div class="navbar-collapse collapse">
	                <ul class="nav navbar-nav pull-right">
	                    <li><a href="#map-section">Ganadores</a></li>
	                    <li><a href="#team-section">Torneo II</a></li>
	                    <li><a href="#premios-section">Seguinos</a></li>
	                </ul>
	            </div>
	        </div>
    	</div>
    	<header id="head">
	        <div class="container">
	            <div class="row">
	                <img class="header-logo" src="http://i.imgur.com/ze7FE4z.png" />
	                <h1 class="lead">
	                    <img src="https://i.imgur.com/wQabEMq.png" />
	            </div>
	        </div>
    	</header>
    	<h1 class="text-center">Sistema de Inscripción de Equipos</h1>
    	<div class="row">
    		<div class="col-sm-4 text-center form-col">
				<form id="teamForm">
					<label for="teamName">Team Name:</label>
					<input class="mustComplete" type="text" id="teamName" name="teamName" value=""><br>
					<label for="teamName">TAG:</label>
					<input class="mustComplete" type="text" id="tag" name="tag" value=""><br>
					<label for="teamName">Mail:</label>
					<input class="mustComplete" type="text" id="mail" name="mail" value=""><br>
					<label for="teamName">Logo URL:</label> 
					<input class="mustComplete" type="text" id="logoUrl" name="logoUrl" value=""><br>
					<label for="teamName">Facebook:</label>
					<input type="text" id="facebook" name="facebook" value=""><br>
					<label for="teamName">Twitter:</label>
					<input type="text" id="twitter" name="twitter" value=""><br>
					<label for="teamName">Team Web:</label>
					<input type="text" id="web" name="web" value=""><br>
					
					<ul id="playersList">
						<div id="accordion">
							<h3 id="1">Player 1:</h3> 
								<div> 
									<li class='player' id="player1">
									</li>
								</div> 
							<h3 id="2">Player 2:</h3> 
								<div> 
									<li class='player' id="player2">
									</li>
								</div>
							<h3 id="3">Player 3:</h3> 
								<div> 
									<li class='player' id="player3">
									</li>
								</div> 
							<h3 id="4">Player 4:</h3> 
								<div> 
									<li class='player' id="player4">
									</li>
								</div> 
							<h3 id="5">Player 5:</h3> 
								<div> 
									<li class='player' id="player5">
									</li>
								</div> 
							<h3 id="6">Player 6:</h3> 
								<div> 
									<li class='player' id="player6">
									</li>
								</div> 
							<h3 id="7">Player 7:</h3> 
								<div> 
									<li class='player' id="player7">
									</li>
								</div> 																																								 
						</div>
					</ul>
					<input class="btn primary" type="submit" value="Create">
				</form>
			</div>
		</div>
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/hero.css" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
	<script>
		$(document).ready(function() {
			var playerNumber = 0;
				while(playerNumber < 7){
					playerNumber++;
					var htmlPlayerNumber = "<input type='hidden' id='playerNumber' value='"+playerNumber+"'/>"
					var htmlName = "<label for='name'>Name:</label> <input class='tagEditor mustComplete' type='text' id ='name' name='name' value=''><br>";
					var htmlLastName = "<label for='lastName'>Last Name:</label> <input class='tagEditor mustComplete' type='text' id='lastName' name='lastName' value=''><br>";
					var htmlIdNumber = "<label for='idNumber'>Documento:</label> <input type='text' class='mustComplete' id='idNumber' name='idNumber' value=''><br>";
					var htmlBirthday = "<label for='birthday'>Cumpleaños:</label> <input class='birthday mustComplete' type='text' id='birthday'"+playerNumber+"><br>";
					var htmlNick = "<label for='nick'>Nick:</label> <input class='mustComplete' type='text' id='nick' name='nick' value=''><br>";
					var htmlSteam = "<label for='steam'>Steam:</label> <input class='mustComplete' type='text' id='steam' name='steam' value=''><br>";
					var htmlDotabuff = "<label for='dotabuff'>Dotabuff:</label> <input type='text' id='dotabuff' name='dotabuff' value=''><br>";
					var htmlPicture = "<label for='pictureUrl'>Picture URL:</label> <input class='mustComplete' type='text' id='pictureUrl' name='pictureUrl' value=''><br>";
					var htmlCaptain = "<label for='isCaptain'>Capitan:</label> <input type='checkbox' class='isCaptain' id='isCaptain' name='isCaptain' value='"+playerNumber+"'><br>";
					var htmlCountry = "<label for='country'>Country:</label> <select class='country' id='country' name='country'> <#list countries as country> <option value='${country}'>${country.description}</option> </#list> </select> <br>";
					var htmlRelativeLocation = "<div id='relativeLocation'> <label for='state'>Provincia:</label> <select id='state' name='state'> <#list states as state> <option value='${state}'>${state.description}</option> </#list> </select> <br> <label for='city'>Ciudad:</label> <input type='text' id='city' name='city' value=''><br> <label for='neighbourhood'>Barrio:</label> <input type='text' id='neighbourhood' name='neighbourhood' value=''><br> </div>";
					var htmlRole = "<label for='roles'>Rol:</label> <select class='mustComplete' id='role' name='role'> <option  value='DEFAULT'>Elije un rol</option> <#list roles as enum> <option value='${enum}'>${enum.description}</option> </#list> </select> <br>";
					$("#player"+playerNumber).append(htmlPlayerNumber);
					$("#player"+playerNumber).append(htmlName);
					$("#player"+playerNumber).append(htmlLastName);
					$("#player"+playerNumber).append(htmlIdNumber);
					$("#player"+playerNumber).append(htmlBirthday);
					$("#player"+playerNumber).append(htmlNick);
					$("#player"+playerNumber).append(htmlSteam);
					$("#player"+playerNumber).append(htmlDotabuff);
					$("#player"+playerNumber).append(htmlPicture);
					$("#player"+playerNumber).append(htmlCaptain);
					$("#player"+playerNumber).append(htmlCountry);
					$("#player"+playerNumber).append(htmlRelativeLocation);
					$("#player"+playerNumber).append(htmlRole);
				}
			$(".isCaptain").change(function(){
				var isCaptain = $(this).is(":checked");
				if(isCaptain){
					var captainNumber = $(this).val();
					$(".isCaptain").each(function(){
						if($(this).val() != captainNumber){
							if($(this).is(":checked")){
								alert("Ya habias marcado un capitan, se actualizo por el que acabas de seleccionar")
								$(this).attr('checked', false)
							}
						}
					});
				}
			});
			var icons = {
		      header: "ui-icon-circle-arrow-e",
		      activeHeader: "ui-icon-circle-arrow-s"
		    };
		    $( "#accordion" ).accordion({
			  collapsible: true,
		      icons: icons,
		      active: false
		    });
		    $(".country").change(function() {
		    	if($(this).val() == "OTHER"){
		    		hideLocation($(this).parent());
		    	}else{
		    		showLocation($(this).parent());
		    	}
			  
			});
		    $(".tagEditor").on('input',function(e){
		      var playerNumber =$(this).parent().find("#playerNumber").val();
			  $("#"+playerNumber).html($(this).parent().find("#name").val() + " " + $(this).parent().find("#lastName").val())
			  $("#"+playerNumber).append("<span class='ui-accordion-header-icon ui-icon ui-icon-circle-arrow-s'></span>");
			});
			
			function hideLocation(e){
				e.find("#relativeLocation").hide()
			}
			function showLocation(e){
				e.find("#relativeLocation").show()
			}
			
			$(function() {
				$(".birthday").each(function() {
					$(this).datepicker({
					    changeMonth: true,
					    changeYear: true,
					    buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
					    showOn: "button",
	      				buttonImageOnly: true,
	      				yearRange: "-100:+0",
	      				dateFormat: "dd/mm/yy"
				  	});
				});
			});
			$("#teamForm").submit(function(e){
				e.preventDefault(); 
				
				//validations
				var validator = false;
				$(".mustComplete").each(function(){
					if($(this).val() == undefined || $(this).val() == "" || $(this).val() == "DEFAULT"){
						$(this).addClass("error");
						validator = true;
					}else{
						$(this).removeClass("error");
					}
				});
				
				if(validator){
					return false;
				}
				
				var team = new Object();
				team.name = $("#teamName").val();
				team.tag = $("#tag").val();
				team.mail = $("#mail").val();
				team.facebook = $("#facebook").val();
				team.twitter = $("#twitter").val();
				team.web = $("#web").val();
				team.imageUrl = $("#logoUrl").val();
				var players = [];
				$(".player").each(function() {
				  if($(this).find("#name").val() != ""){
				  	  var heroes = [];
					  var player = new Object();
					  player.name = $(this).find("#name").val();
					  player.lastName = $(this).find("#lastName").val();
					  player.nick = $(this).find("#nick").val();
					  player.role = $(this).find("#role").val();
					  player.captain = $(this).find("#isCaptain").is(":checked");
					  player.steam = $(this).find("#steam").val();
					  player.dotabuff = $(this).find("#dotabuff").val();
					  player.idNumber = $(this).find("#idNumber").val();
					  player.birthday = $(this).find(".birthday").val();
					  player.country = $(this).find("#country").val();
					  if(player.country != "OTHER"){
						  player.state = $(this).find("#state").val();
						  player.city = $(this).find("#city").val();
						  player.neighbourhood = $(this).find("#neighbourhood").val();
					  }
					  player.pictureUrl = $(this).find("#pictureUrl").val();
					  players.push(player);
					}
				});
				team.players = players;
				
				$.ajax({
			        url: "/team",
			        type: 'POST',
		            headers: { 
				        'Accept': 'application/json',
				        'Content-Type': 'application/json' 
				    },
			        dataType: 'json',
			        data: JSON.stringify(team),
			        contentType: 'application/json',
			        mimeType: 'application/json',
			        success: function (data) {
			        	 alert("SUCCESS");
			        },
			        error:function(data,status,er) {
			            alert("error");
			        }
			    });
			});
		});
	</script> 
	</body>
</html>