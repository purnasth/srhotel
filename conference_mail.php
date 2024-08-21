<?php
require_once("includes/initialize.php");

if($_POST['action']=="forconference"):
	$usermail = User::get_UseremailAddress_byId(1);
	$ccusermail = User::field_by_id(1,'optional_email');
	$sitename = Config::getField('sitename',true);

	foreach($_POST as $key=>$val){$$key=$val;}
	$body = '
	<table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
	  <tr>
		<td><p>Dear Sir,</p>
		</td>
	  </tr>
	  <tr>
		<td><p><span style="color:#0065B3; font-size:14px; font-weight:bold">Enquiry For Event/Room Booking</span><br />
		  The details provided are:</p>
		  <p><strong>Applicant&#39;s Name</strong> : '.$fullname.'<br />
		  <strong>Address</strong> : '.$address.'<br />
		  <strong>Phone Number</strong>: '.$tel.'<br />
		  <strong>Email</strong> : '.$mailaddress.'<br />		
		  <strong>Program Event</strong> : '.$conference_event.'<br />
		  <strong>Date</strong> : '.$day.'<br />		
		  <strong>No. of Pax</strong>: '.$paxno.'<br />
		  <strong>Message :</strong><br />'.$comment.'
		  </p>
		</td>
	  </tr>
	  <tr>
		<td><p>&nbsp;</p>
		<p>Thank you,<br />
		'.$fullname.'
		</p></td>
	  </tr>
	</table>';
	
	/*
	* mail info
	*/
	
	$mail = new PHPMailer(); // defaults to using php "mail()"
	
	$mail->SetFrom($mailaddress, $fullname);
	$mail->AddReplyTo($mailaddress,$fullname);
	
	$mail->AddAddress($usermail, $sitename);
	// if add extra email address on back end
	if(!empty($ccusermail)){
		$rec = explode(';', $ccusermail);
		if($rec){
			foreach($rec as $row){
				$mail->AddCC($row,$sitename);
			}		
		}
	}

	
	$mail->Subject    = 'Enquiry mail for Event/Room from '.$fullname;
	
	$mail->MsgHTML($body);
	
	if(!$mail->Send()) {
		echo json_encode(array("action"=>"unsuccess","message"=>"We could not sent your request at the time. Please try again later."));
	}else{
		echo json_encode(array("action"=>"success","message"=>"Thank you for enquiry, we will get back to you shortly."));
	}
endif;
?>