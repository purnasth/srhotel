<?php require_once('stripe/init.php');

$stripe = array(
  "secret_key"      => "sk_live_MDIqVyV92NLtzpkfa3P9RnRb",
  "publishable_key" => "pk_live_Vr1uq68wVPVwxKZwEsuUqkt0"
);

\Stripe\Stripe::setApiKey($stripe['secret_key']);