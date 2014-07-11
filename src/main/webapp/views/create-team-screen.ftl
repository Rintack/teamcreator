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
				<label for='player1'>Player 1:</label>
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
			</ul>
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