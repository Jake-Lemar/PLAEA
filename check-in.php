<?php
$username = $_POST['username'];
$password = $_POST['password'];

if(!empty($username) && !empty($password)){





    $sql = "
 SELECT * FROM Login WHERE username='".$username."' AND _password='".$password."'";

    $db = new mysqli("127.0.0.1", "root", "", "test", 3307);
    $result = $db->query($sql);

    $row = $result->fetch_assoc();
    $cookie_value = $row['FirstName'];
    $cookie_value_2 = $row['id'];

    if ($username == $row['username'] && $password == $row['_password']) {
        $_SESSION['cat'] = $_POST['id'];
        setcookie('userid', $cookie_value_2, time() + 3600, "/");
        setcookie('username', $cookie_value, time() + 3600, "/");
       $sql = "INSERT into check_in (userid, login) VALUES (".$cookie_value_2.", CURTIME());";
         $result = $db->query($sql);

        if ($username == '@dmin'){
            header("Location: http://localhost/plaeaADMIN.php");
        }
         else {header("Location: http://localhost/plaeauser.php");
            }




    } else {
    
         header("Location: http://localhost/plaealogin.php");

    }
}
?>

