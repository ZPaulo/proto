<?php
include_once ('../../config/init.php');
include_once ($BASE_DIR . 'database/users.php');

if (! $_POST ['username'] || ! $_POST ['password'] || ! $_POST ['local']) {
	$_SESSION ['error_messages'] [] = 'All fields are mandatory';
	$_SESSION ['form_values'] = $_POST;
	header ( "Location: $BASE_URL" . 'pages/create_manager.php' );
	exit ();
}

$username = strip_tags ( $_POST ['username'] );
$password = $_POST ['password'];
$local = $_POST ['local'];


try {
	createManager ( $username, $password, $local );
} catch ( PDOException $e ) {
	
	if (strpos ( $e->getMessage (), 'users_pkey' ) !== false) {
		$_SESSION ['error_messages'] [] = 'Duplicate username';
		$_SESSION ['field_errors'] ['username'] = 'Username already exists';
	} else
		$_SESSION ['error_messages'] [] = 'Error creating manager';
	
	$_SESSION ['form_values'] = $_POST;
	header ( "Location: $BASE_URL" . 'pages/administration.php' );
	exit ();
}
$_SESSION ['success_messages'] [] = 'Manager registered successfully';
header ( "Location: $BASE_URL" . 'pages/administration.php' );
?>
