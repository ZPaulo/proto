<?php
  include_once('../../config/init.php');
  include_once($BASE_DIR .'database/users.php');  

ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);
  if (!$_POST['username'] || !$_POST['name'] || !$_POST['password'] || !$_POST['email'] || !$_POST['cellphone'] || !$_POST['adress'] ) {
    $_SESSION['error_messages'][] = 'All fields are mandatory';
    $_SESSION['form_values'] = $_POST;
    //header("Location: $BASE_URL" . 'pages/users/register.php');

echo '<script language="javascript">console.log("nop");</script>';
    exit;
  }

  $realname = strip_tags($_POST['name']);
  $username = strip_tags($_POST['username']);
  $password = $_POST['password'];
  $email = strip_tags($_POST['email']);
  $cellphone = ($_POST['cellphone']);
  $adress = strip_tags($_POST['adress']);

echo '<script language="javascript">console.log("cenas1");</script>';
  //$photo = $_FILES['photo'];
  //$extension = end(explode(".", $photo["name"]));

  try {
    createUser($realname, $username, $password, $email, $cellphone, $adress);
echo '<script language="javascript">console.log("cenas2");</script>';
    //move_uploaded_file($photo["tmp_name"], $BASE_DIR . "images/users/" . $username . '.' . $extension); // this is dangerous
    //chmod($BASE_DIR . "images/users/" . $username . '.' . $extension, 0644);
  } catch (PDOException $e) {
  
    if (strpos($e->getMessage(), 'users_pkey') !== false) {
      $_SESSION['error_messages'][] = 'Duplicate username';
      $_SESSION['field_errors']['username'] = 'Username already exists';
    }
    else $_SESSION['error_messages'][] = 'Error creating user';

    $_SESSION['form_values'] = $_POST;
    //header("Location: $BASE_URL" . 'pages/users/register.php');
    exit;
  }
  $_SESSION['success_messages'][] = 'User registered successfully';  
  //header("Location: $BASE_URL");
?>
