<?php include 'database.php' ; ?>
<?php
	//Create Select Query
	$query = "SELECT * FROM SONG";
	$shouts = mysqli_query($con, $query);
?>
<!DOCTYPE html>
<html>
	<head>
  		<meta charset="utf-8" />
  		<title>SHOUT IT!</title>
		<link rel="stylesheet" href="css/style.css" type="text/css" />
	</head>
	<body>
		<p> </p>
	</body>
</html>