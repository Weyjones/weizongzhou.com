<?php
//Connect to MySQL
$con = mysqli_connect("52.25.185.248:3306","user1","user1","MUSIC_DATABASE");

//Test Connection
if(mysqli_connect_errno()){
	echo 'Failed to connect to MySQL: '.mysqli_connect_error();
}