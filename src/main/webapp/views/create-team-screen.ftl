<!DOCTYPE html>
<html>
	<body>
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
				<h3>Player 1:</h3>
				<div>
					<li id='player1'>
						<label for='name'>Name:</label>
						<input type='text' name='name' value=''><br>
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
			$("#teamForm").submit(function(e){
				e.preventDefault(); 
				var team = new Object();
				team.name = $("#teamName").val();
				team.tag = $("#tag").val();
				team.mail = $("#mail").val();
				var jsonpost = JSON.stringify(team);
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
			        
			        },
			        error:function(data,status,er) {
			            alert("error");
			        }
			    });
			});
			var icons = {
		      header: "ui-icon-circle-arrow-e",
		      activeHeader: "ui-icon-circle-arrow-s"
		    };
		    $( "#accordion" ).accordion({
			  collapsible: true,
		      icons: icons
		    });
		});
	</script> 
	</body>
</html>