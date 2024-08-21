<?php
define('HOMEPAGE', 0); // Track homepage.
define('JCMSTYPE', 0); // Track Current site language.

require_once("includes/initialize.php");
unset($_SESSION['cart_detail']);
$currentTemplate	= Config::getCurrentTemplate('template');
$jVars 				= array();
$template 			= "template/{$currentTemplate}/unsuccess.html";

require_once('views/modules.php');

$msg_success = '';
$act_post = !empty($_POST['act_post'])?addslashes($_POST['act_post']):'';
switch ($act_post) {

	case 'transaction':
		$msg = !empty($_POST['message'])?addslashes($_POST['message']):'Error !';
		$msg_success.='<div class="message-tx">
			<h4 class="text-center">Payment transaction error !</h4>
			<p class="text-center">'.$msg.'</p>	
			<p><br><br><br></p>
		</div>';
		break;
	
	default:
		redirect_to(BASE_URL.'home');

		break;
}
$jVars['module:unsuccess-msg'] = $msg_success;

template($template, $jVars, $currentTemplate);
?>