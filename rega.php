<?php
session_start();
include('connect.php');
if(isset($_POST['login1']))
{
    $arr = array('<br>', '<b>','<font>','</b>','</font>', '<center>','</center>');
    $pattern = '/select|insert|update|union|drop|create|show|where|use/iS';
	$p1 = $_POST['password'];
	$p2 = $_POST['password1'];
    if(strlen($p1) > 60 || strlen($p1) < 3)
    {
        echo("Длина пароля неверна");
    }
    else
    {
        if($p2 != $p1)
        {
            echo("Пароли не совпадают!");
        }
        else
        {
            $username = $_POST['username'];
            $password = md5(trim($_POST['password1']));
            $username = strip_tags($username, $arr);
            $username = preg_replace($pattern, '', $username); 
            $username = htmlspecialchars_decode($username, ENT_NOQUOTES);
            $password = strip_tags($password, $arr);
            $password = preg_replace($pattern, '', $password); 
            $password = htmlspecialchars_decode($password, ENT_NOQUOTES);
            $query = "INSERT INTO `users`(`name`, `pass`) VALUES ('$username', '$password')";
            $sql = mysqli_query($mysqli, $query);
            if ($sql) {
                    echo '<p class="success">Регистрация прошла успешно!</p>';
                    $new_url = 'http://sqlinject/authbez.php';
                    header('Location: '.$new_url);
                } else {
                    echo '<p class="error">Неверные данные!</p>';
                }
            $mysqli->close();
        }
    }
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
<form method="post" action=""> 
    <label>Логин</label>
    <input type="text" name="username" pattern="[a-zA-Z0-9]+" required />
    <label>Пароль</label>
    <input type="password" name="password" pattern="[a-zA-Z0-9]+" required />
    <label>Повторите пароль</label>
    <input type="password" name="password1" pattern="[a-zA-Z0-9]+" required />
  <button type="submit" name="login1" value="login1">Регистрация</button>
</form>
</body>
</html>