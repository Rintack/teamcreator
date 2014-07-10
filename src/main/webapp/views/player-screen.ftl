<#ftl encoding="UTF-8" />
<#import "/spring.ftl" as s />

<head>
	<script charset="utf-8" type="text/javascript" src="/dota-player/js/jquery-2.1.1.js"></script>
	<link rel="stylesheet" type="text/css" href="/dota-player/css/screen.css?v7" />
	<link rel="stylesheet" type="text/css" href="/dota-player/css/hero.css?v18" />
	
	<script>
	
	var name = "";
	var team = "";
	var proTeam = "";
	var hero = "";
	
	$(document).ready(function(){
	 	setInterval(getScreenData,5000);
	});
	
	function getScreenData() {
		$.getJSON("/dota-player/screen/service/${machineId}")
		  		.done(function(data) {
		    		console.log( "get player screen data" );
		    		if (data == null) {
		    			showWaiting();
		    		} else {
		    			showPlayer(data.player);
		    		}
		  		});
	}
	
	function showPlayer(player) {
		if (!equalPlayer(player)) {
			console.log( "show new player screen" );
			cleanScreen();
			setPlayer(player);
			$(document.body).addClass(team.toLowerCase());
			$(".name").html(name);
			$(".hero").addClass(hero.toLowerCase());
		}
	}
	
	function showWaiting() {
		if (!emptyPlayer()) {
			console.log( "back to waiting" );			
			cleanScreen();
			cleanPlayer();
		}
	}
	
	function cleanScreen() {
		$(document.body).removeClass(team.toLowerCase());
		$(".name").empty();
		$(".hero").removeClass(hero.toLowerCase());
	}
	
	function equalPlayer(player) {
		return (player.name == name && player.team == team && player.proTeam == proTeam && player.hero == hero);
	}
	
	function setPlayer(player) {
		name = player.name;
		team = player.team;
		proTeam = player.proTeam;
		hero = player.hero;
	}
	
	function emptyPlayer() {
		return (name == "" && team == "" && proTeam == "" && hero == "")
	}
	
	function cleanPlayer() {
		name = "";
		team = "";
		proTeam = "";
		hero = "";
	}
	
	</script>
</head>

<body class="waiting">
	<div class="image">
		<div class="hero"></div>
	</div>
	<div class="data">
		<h1 class="name"></h1>
	</div>

</body>

