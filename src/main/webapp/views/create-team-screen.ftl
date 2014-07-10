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
			
			<input type="button" id="addPlayer" value="ADD A FUCKING PLAYER TO MY TEAM"><br>
			<ul id="playersList">
			</ul>
			<input type="button" id="removeLastPlayer" value="REMOVE A FUCKING PLAYER TO MY TEAM"><br>
			<#-- Here i want to do a button that allow you to add players one by one so you could do up to 7, but you need to put at least 5 -->
			<input type="submit" value="CREATE MY FUCKING TEAM">
		</form>
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
	<script>
		$(document).ready(function() {
			var playersAdded = 0;
			$("#addPlayer").click(function() {
				if(playersAdded < 7){
					playersAdded++
	 				$("#playersList").append("<label class='player"+ playersAdded +"' for='player"+ playersAdded +"'>Player "+playersAdded+":</label> <li class='player"+ playersAdded +"' id='player"+playersAdded+"'>					<label for='name'>Name:</label>					<input type='text' name='name' value=''><br>					<label for='lastName'>Last Name:</label>					<input type='text' name='lastName' value=''><br>					<label for='nick'>Nick:</label>					<input type='text' name='nick' value=''><br>					<label for='steam'>Steam:</label>					<input type='text' name='steam' value=''><br>					<label for='dotabuff'>Dotabuff:</label>					<input type='text' name='dotabuff' value=''><br>					<label for='pictureUrl'>Picture URL:</label>					<input type='text' name='pictureUrl' value=''><br>				<label for='playerRole'>Player Role:</label>			<select name='Role'>				<option value='DEFAULT'>Please choose a role for your player</option>		        <#list roles as role>		        <option value='${role}'>${role.description}</option>		        </#list>		    </select> </li>");
	 			}else{
	 				alert("the player limit is 7");
	 			}
			});
			$("#removeLastPlayer").click(function() {
				if(playersAdded > 0){
					$(".player"+playersAdded).remove()
					playersAdded--
				}else{
					alert("cant delete because there is no data added");
				}
			});
			$("#teamForm").submit(function(e){
				e.preventDefault(); 
				var team = new Object();
				team.name = $("#teamName").val();
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
		});
	</script> 
	</body>
</html>