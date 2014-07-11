<!DOCTYPE html>
<html>
	<head>
	    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" media="screen" rel="stylesheet" />
	    <link href="../css/bootstrap.min.css" rel="stylesheet" />
	    <link href="../css/font-awesome.min.css" rel="stylesheet" />
	    <!-- Custom styles for our template -->
	    <link href="../css/bootstrap-theme.css" media="screen" rel="stylesheet" />
	    <link href="../css/main.css" rel="stylesheet" />
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
					<input type="text" id="teamName" name="teamName" value=""><br>
					<label for="teamName">TAG:</label>
					<input type="text" id="tag" name="tag" value=""><br>
					<label for="teamName">Mail:</label>
					<input type="text" id="mail" name="mail" value=""><br>
					<label for="teamName">Logo URL:</label> 
					<input type="text" id="logoUrl" name="logoUrl" value=""><br>
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
							<li class='player'>
								<input type="hidden" id="playerNumber" value="1"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
						        </div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
						  </li>
					   </div>	
						<h3 id="2">Player 2:</h3>
						<div>
							<li class='player'>
								<input type="hidden" id="playerNumber" value="2"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
						        </div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
						  </li>
					   </div>
						<h3 id="3">Player 3:</h3>
						<div>
							<li class='player'>
								<input type="hidden" id="playerNumber" value="3"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
						        </div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
						  </li>
					   </div>
					   <h3 id="4">Player 4:</h3>
						<div>
							<li class='player'>
								<input type="hidden" id="playerNumber" value="4"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
						        </div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
						  </li>
					   </div>
					   <h3 id="5">Player 5:</h3>
						<div>
							<li class='player'>
								<input type="hidden" id="playerNumber" value="5"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
								</div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
						  </li>
					   </div>
					   <h3 id="6">Player 6:</h3>
						<div>
							<li class='player'>
								<input type="hidden" id="playerNumber" value="6"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
						        </div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
						  </li>
					   </div>
					 	<h3 id="7">Player 7:</h3>
						<div>
							<li class='player'>
								<input type="hidden" id="playerNumber" value="7"/>
								<label for='name'>Name:</label>
								<input class="tagEditor" type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input class="tagEditor" type='text' id='lastName' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' id='nick' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' id='steam' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' id='dotabuff' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' id='pictureUrl' name='pictureUrl' value=''><br>
								<label for='isCaptain'>Capitan:</label>
								<input type="checkbox" id='isCaptain' name='isCaptain' value='Capitan'><br>
								<label for='country'>Country:</label>
								<select class='country' id='country' name="country">
						        <#list countries as country>
						        <option value="${country}">${country.description}</option>
						        </#list>
						        </select> <br>
						        <div id='relativeLocation'>
						        <label for='state'>Provincia:</label>
						        <select id='state' name="state">
						        <#list states as state>
						        <option value="${state}">${state.description}</option>
						        </#list>
						        </select> <br>
						        <label for='city'>Ciudad:</label>
						        <input type='text' id='city' name='city' value=''><br>
						        <label for='neighbourhood'>Barrio:</label>
						        <input type='text' id='neighbourhood' name='neighbourhood' value=''><br>
						        </div>
								<label for='roles'>Rol:</label>
								<select id='role' name="role">
								<option value="DEFAULT">Elije un rol</option>
						        <#list roles as enum>
						        <option value="${enum}">${enum.description}</option>
						        </#list>
						    	</select> <br>
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
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
	<script>
		$(document).ready(function() {
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
			$("#teamForm").submit(function(e){
				e.preventDefault(); 
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
				  var player = new Object();
				  player.name = $(this).find("#name").val();
				  player.lastName = $(this).find("#lastName").val();
				  player.nick = $(this).find("#nick").val();
				  player.role = $(this).find("#role").val();
				  player.isCaptain = $(this).find("#isCaptain").val();
				  player.steam = $(this).find("#steam").val();
				  player.dotabuff = $(this).find("#dotabuff").val();
				  player.country = $(this).find("#country").val();
				  player.state = $(this).find("#state").val();
				  player.city = $(this).find("#city").val();
				  player.neighbourhood = $(this).find("#neighbourhood").val();
				  player.pictureUrl = $(this).find("#pictureUrl").val();
				  players.push(player);
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