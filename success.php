<?php
define('HOMEPAGE', 0); // Track homepage.
define('JCMSTYPE', 0); // Track Current site language.

require_once("includes/initialize.php");
unset($_SESSION['cart_detail']);
$currentTemplate	= Config::getCurrentTemplate('template');
$jVars 				= array();
$template 			= "template/{$currentTemplate}/success.html";

require_once('views/modules.php');

$msg_success = '';
$act_post = !empty($_POST['act_post'])?addslashes($_POST['act_post']):'';
switch ($act_post) {

	case 'transaction':
		$order_id = $_POST['order_id'];
		$trans_id = $_POST['trans_id'];
		$msg_success.='<div class="message-tx">
			<h4 class="text-center">Payment transaction has been successful.</h4>
			<p class="text-center">Transaction short Detail provide below :</p>			
			<p class="text-center"><strong>Order Id :</strong> '.$order_id.'<br />
			<strong>Transaction Id :</strong> '.$trans_id.'</p>
			<p><br><br><br></p>
		</div>';
		break;

	default:
		redirect_to(BASE_URL.'home');

		break;
}
$jVars['module:success-msg'] = $msg_success;

template($template, $jVars, $currentTemplate);
?>