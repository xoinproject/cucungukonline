<!doctype html>
<html lang="en">
  <head>
	<!-- Author : Dony Mulayna @bstrdproject --->
	<!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  	  
		<!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
      <title>WEBSITE INSTALLER @bstrdproject</title>
      <style type="text/css">
			body { 
			display: grid;
			grid-template-areas: 
			   "header header"
			   "nav article"
			   "footer footer";
			grid-template-rows: 1fr;
			grid-template-columns: 30% 1fr;
			grid-gap: 5px;
			height: 60vh;
			margin: 10vh;
			}
			
			#mainArticle { 
			  grid-area: article;      
			  }
			  
			#mainNav { 
			  grid-area: nav; 
			  }
			  
			header, article, nav, div {
			  padding: 30px;
			  background: #45ced1;
			}
	  </style>  </head> 

 
  <!-- First Section Start -->
    <article id="mainArticle">
	  <section class="section-padding" id="section-first">
	  
<?php 
  error_reporting(0);

  function extension_check($name){
  if (!extension_loaded($name)) {
  $response = false;
  } else {
  $response = true;
  }
  return $response;
  }

  function folder_permission($name){
  $perm = substr(sprintf('%o', fileperms($name)), -4);
      if ($perm >= '0775') {
        $response = true;
      } else {
         $response = false;
      }
  return $response;
  }

  function importDatabase($mysql_host,$mysql_database,$mysql_user,$mysql_password){
    $db = new PDO("mysql:host=$mysql_host;dbname=$mysql_database", $mysql_user, $mysql_password);
    $query = file_get_contents("database.sql");
    $stmt = $db->prepare($query);
    if ($stmt->execute())
       return true;
    else 
       return false;
  }

  $base_url = home_base_url();
  if (substr("$base_url", -1=="/")) {
  $base_url = substr("$base_url", 0, -1);
  }

  function home_base_url(){   
    $base_url = (isset($_SERVER['HTTPS']) &&
    $_SERVER['HTTPS']!='off') ? 'https://' : 'http://';
    $tmpURL = dirname(__FILE__);
    $tmpURL = str_replace(chr(92),'/',$tmpURL);
    $tmpURL = str_replace($_SERVER['DOCUMENT_ROOT'],'',$tmpURL);
    $tmpURL = ltrim($tmpURL,'/');
    $tmpURL = rtrim($tmpURL, '/');
    $tmpURL = str_replace('install','',$tmpURL);
    $base_url .= $_SERVER['HTTP_HOST'].'/'.$tmpURL;
    return $base_url; 
  }

  function createTable($name, $details, $status){
  if ($status=='1') {
  $pr = '<i class="fa fa-check"><i>';
  }else{
  $pr = '<i class="fa fa-times" style="color:red;"><i>';
  }
  echo "<tr><td>$name</td><td>$details</td><td>$pr</td></tr>";
  }

  ////####################################################
  $extensions = [
      'openssl' ,'pdo', 'mbstring', 'tokenizer', 'JSON', 'cURL', 'gmp', 'XML', 'fileinfo'
  ];

  $folders = [
  '../core/bootstrap/cache/', '../core/storage/', '../core/storage/app/', '../core/storage/framework/', '../core/storage/logs/'
  ];
  ////####################################################

  if (isset($_GET['action'])) {
  $action = $_GET['action'];
  }else {
  $action = "";
  }
  if ($action=='install') {
?>

<div class="step-installer first-installer second-installer third-installer">
  <div class="installer-header"><p><h1 style="text-transform: uppercase;">Result</h1></div>
  <div class="installer-content">
  
  
<?php
  if ($_POST) {
  $user = $_POST['user'];
  $code = $_POST['code'];
  $db_name = $_POST['db_name'];
  $db_host = $_POST['db_host'];
  $db_user = $_POST['db_user'];
  $db_pass = $_POST['db_pass'];
  $status = json_decode($ac);
  if ($status->status=='Error') {
  echo "<h2 class='text-center' style='color:red;'>$status->message<h2>";
  }else{
  if(importDatabase($db_host,$db_name,$db_user,$db_pass)){
  echo '<div style="text-align:center; text-transform:uppercase;">
  <h1>Installed Successfully </h1><br>
  <a href="'.$base_url.'" class="btn btn-success btn-sm">Go to Website</a> 
  <br><br><b style="color:red;">Please Delete The Install Folder</b><br><br><br></div>';
  ////////////////////// UPDATE CONFIG  \\\\\\\\\\\\\\\\\\\\\\\\\\\
  $key = base64_encode(random_bytes(32));
  $output = '
  APP_NAME=Laravel
  APP_ENV=production
  APP_KEY=base64:'.$key.'
  APP_DEBUG=false
  APP_LOG_LEVEL=debug
  APP_URL='.$base_url.'

  DB_CONNECTION=mysql
  DB_HOST='.$db_host.'
  DB_PORT=3306
  DB_DATABASE='.$db_name.'
  DB_USERNAME='.$db_user.'
  DB_PASSWORD='.$db_pass.'


  BROADCAST_DRIVER=log
  CACHE_DRIVER=file
  SESSION_DRIVER=file
  SESSION_LIFETIME=120
  QUEUE_DRIVER=sync

  REDIS_HOST=127.0.0.1
  REDIS_PASSWORD=null
  REDIS_PORT=6379

  MAIL_DRIVER=smtp
  MAIL_HOST=smtp.mailtrap.io
  MAIL_PORT=2525
  MAIL_USERNAME=null
  MAIL_PASSWORD=null
  MAIL_ENCRYPTION=null

  PUSHER_APP_ID=
  PUSHER_APP_KEY=
  PUSHER_APP_SECRET=
  PUSHER_APP_CLUSTER=mt1

  PURCHASECODE ='.$code.'
  ';

  $file = fopen('../core/.env', 'w');
  fwrite($file, $output);
  fclose($file);
  }else{
  echo "<h2 class='text-center' style='color:red;'>Please Check Your Database Credential!<h2>";
  }
  }
  }
?>
  </div>
  </div>
<?php
  }elseif($action=='config') {
?>
  <div class="step-installer first-installer second-installer third-installer">
    <div class="installer-header"><center><h1 style="text-transform: uppercase;">Information</h1><center></div>
	  <div class="installer-content">
		<form action="?action=install" method="post"><h4>APP URL</h4>
		  <input class="form-control" name="app_url" value="<?php echo $base_url; ?>" type="text"><br>
			<hr style="background: #777; height: 1px;">
			  <h4 style="text-transform: uppercase;">PURCHASE VERIFICATION</h4>
				<input class="form-control input-lg" name="user" placeholder="@bstrdproject" type="text" required=""><br>
				<input class="form-control input-lg" name="code" placeholder="U2NyaXB0IGRvd25sb2FkZWQgZnJvbSBDT0RFTElTVC5DQw==" type="text" required=""><br>
				<hr style="background: #777; height: 1px;">
			  <h4 style="text-transform: uppercase;">Database Details</h4>
				<input class="form-control input-lg" name="db_name" placeholder="Database Name" type="text" required=""><br>
				<input class="form-control input-lg" name="db_host" placeholder="Database Host" type="text" required=""><br>
				<input class="form-control input-lg" name="db_user" placeholder="Dabatabe User" type="text" required=""><br>
				<input class="form-control input-lg" name="db_pass" placeholder="Password" type="text" required=""><br>
			<button class="btn btn-primary" type="submit">INSTALL NOW</button>
		</form>
	</div>
  </div>
  
<?php
  }elseif ($action=='requirements') {
?>

  <div class="step-installer first-installer second-installer">
	<div class="installer-header" style="text-transform: uppercase;"><h1>Server Requirments</h1></div>
    <div class="installer-content table-responsive">
	  <table class="table table-striped" style="text-align: left;">
		<tbody>
	   
	   
<?php
  $error = 0;
  $phpversion = version_compare(PHP_VERSION, '7.0.0', '>=');
  if ($phpversion==true) {
  $error = $error+0;
  createTable("PHP", "Required PHP version 7.0 or higher",1);
  }else{
  $error = $error+1;
  createTable("PHP", "Required PHP version 7.0 or higher",0);
  }
  foreach ($extensions as $key) {
  $extension = extension_check($key);
  if ($extension==true) {
  $error = $error+0;
  createTable($key, "Required ".strtoupper($key)." PHP Extension",1);
  }else{
  $error = $error+1;
  createTable($key, "Required ".strtoupper($key)." PHP Extension",0);
  }
  }
  foreach ($folders as $key) {
  $folder_perm = folder_permission($key);
  if ($folder_perm==true) {
  $error = $error+0;
  createTable(str_replace("../", "", $key)," Required permission: 0775 ",1);
  }else{
  $error = $error+1;
  createTable(str_replace("../", "", $key)," Required permission: 0775 ",0);
  }
  }
  $envCheck = is_writable('../core/.env');
  if ($envCheck==true) {
  $error = $error+0;
  createTable('env'," Required .env to be writable",1);
  }else{
  $error = $error+1;
  createTable('env'," Required .env to be writable",0);
  }
  $database = file_exists('database.sql');
  if ($database==true) {
  $error = $error+0;
  createTable('Database',"  Required database.sql available",1);
  }else{
  $error = $error+1;
  createTable('Database'," Required database.sql available",0);
  }
  echo '</tbody></table><div class="button">';
  if ($error==0) {
  echo '<a class="btn btn-primary anchor" href="?action=config">Next Step <i class="fa fa-angle-double-right"></i></a>';
  }else{
  echo '<a class="btn btn-info anchor" href="?action=requirements">ReCheck <i class="fa fa-sync-alt"></i></a>';
  }
?>
		</div>
	</div>
  </div>
  
  
<?php
  }else{
?>

  <div class="step-installer first-installer">
  
   <div class="installer-header"><h1 style="text-transform: uppercase;"><center> Terms of use</h1></center></div>
    <div class="installer-content">
      <p style="text-align: left;"><h2>
        <strong>License to be used on one (1) domain only!</strong> </h2><br>
				<h3>The Regular license is for one website / domain only. If you want to use it on multiple websites / domains you have to purchase more licenses (1 website = 1 license).</h3><br><br>
		  <div class="button"><a class="btn btn-primary anchor" href="?action=requirements">I Agree. Next Step <i class="fa fa-angle-double-right"></i></a></p></div>
		    <p><h4>For more information, Please Check <a href="https://codecanyon.net/licenses/faq" target="_blank">Envato License FAQ </a>.</h4></p>
  </div>
		  
<?php
}
?>
  </div>
</div>
</section>
</article>

  <nav id="mainNav"><br><br><br><br>
  <br>
  <p><strong>YOU CAN:</strong></p>
   <i class="fa fa-check"></i>   Use on one (1) domain only.<br>
    <i class="fa fa-check"></i>   Modify or edit as you want.<br>
    <i class="fa fa-check"></i>   Translate language as you want.<br><br><br><br><br>

  
  <p><strong>YOU CANNOT:</strong></p>
  <i class="fa fa-times" style="color:red;"></i>  Resell, distribute, give away or trade by any means to any third party or individual without permission.<br>
  <i class="fa fa-times" style="color:red;"></i>  Include this product into other products sold on Envato market and its affiliate websites.<br>
  <i class="fa fa-times" style="color:red;"></i>  Use on more than one (1) domain.<br>

 </nav> 
  
  
<footer id="pageFooter"> 
U2NyaXB0IGRvd25sb2FkZWQgZnJvbSBDT0RFTElTVC5DQw==
  </div>
  
</footer>

<!-- Optional JavaScript -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
</html>