<?php
session_start();
include('connect.php');
if(isset($_POST['kom']))
{
	$arr = array('<br>', '<b>','<font>','</b>','</font>', '<center>','</center>');
	$pattern = '/select|insert|update|union|drop|create|show|where|use/iS';
    $comments = $_POST['koms'];
    $comments = strip_tags($comments, $arr);
    $comments = preg_replace($pattern, '', $comments); 
    $comments = htmlspecialchars_decode($comments, ENT_NOQUOTES);  
    $query = "INSERT INTO `comments`(`kom`) VALUES ('$comments')";
    $sql = mysqli_query($mysqli, $query);
    if($sql)
    {
		$query1 = "SELECT `kom` FROM `comments`";
		if($sql1 = mysqli_query($mysqli, $query1))
		{

		    if (mysqli_num_rows($sql1) > 0)
		    {
		        while($row = mysqli_fetch_array($sql1))
		       	{
		       		echo "<p>".$row['kom']."</p>";
		        }
			}
		    else
		    {
		        echo '<p class="error">Неверно!</p>';
		    }
		} 
		else 
		{
		    echo '<p class="error">Неверно!</p>';
		}
    }
	else 
    {
		echo '<p class="error">Неверно!111</p>';
    }
    $mysqli->close();
}
	

	

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<p>Комментарии</p>
<form method="post" action=""> 
<textarea name = "koms"></textarea>
<button type="submit" name="kom" value="kom">Отправить</button>
</form>
</body>
</html>