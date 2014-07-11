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
						<h3 id="firstTab">Player 1:</h3>
						<div>
							<li class='player'>
								<label for='name'>Name:</label>
								<input type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input type='text' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' name='pictureUrl' value=''><br>
								<select name="Role">
						        <#list roles as enum>
						        <option value="${enum}">{$enum.description}</option>
						        </#list>
						    </select>
						  </li>
					   </div>
					   <h3>Player 2:</h3>
						<div>
							<li class='player'>
								<label for='name'>Name:</label>
								<input type='text' id ='name' name='name' value=''><br>
								<label for='lastName'>Last Name:</label>
								<input type='text' name='lastName' value=''><br>
								<label for='nick'>Nick:</label>
								<input type='text' name='nick' value=''><br>
								<label for='steam'>Steam:</label>
								<input type='text' name='steam' value=''><br>
								<label for='dotabuff'>Dotabuff:</label>
								<input type='text' name='dotabuff' value=''><br>
								<label for='pictureUrl'>Picture URL:</label>
								<input type='text' name='pictureUrl' value=''><br>
								<select name="Role">
						        <#list roles as enum>
						        <option value="${enum}">{$enum.description}</option>
						        </#list>
						    </select>
						  </li>
					   </div>
					</div>
					</ul>
					<input type="submit" value="Create">
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
			$("#teamForm").submit(function(e){
				e.preventDefault(); 
				var team = new Object();
				team.name = $("#teamName").val();
				team.tag = $("#tag").val();
				team.mail = $("#mail").val();
				team.facebook = $("#facebook").val();
				team.twitter = $("#twitter").val();
				team.web = $("#web").val();
				team.logoUrl = $("#logoUrl").val();
				var players = [];
				$(".player").each(function() {
				  var player = new Object();
				  player.name = $(this).find("#name").val();
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