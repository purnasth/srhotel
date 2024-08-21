<?php 
	// Load the header files first
	header("Expires: 0"); 
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
	header("cache-control: no-store, no-cache, must-revalidate"); 
	header("Pragma: no-cache");

	// Load necessary files then...
	require_once('../initialize.php');

	$usermail = User::field_by_id('1', 'email');
	$sitename = Config::getField('sitename',true);
	$bccmail = User::field_by_id('1','optional_email');
	
	$action = $_REQUEST['action'];
	
	switch($action) 
	{						
		case "request_inquiry":
			foreach($_POST as $key=>$val) { $$key=$val; }
					
			// For tbl_bookinginfo
			$bokRec = new Bookinginfo();

			$bokRec->accesskey		= $trans_key;
			$bokRec->person_checkin	= $person_checkin;
			$bokRec->person_first 	= $person_first;
			$bokRec->person_last	= $person_last;
			$bokRec->person_contact 	= $person_contact;
			$bokRec->person_email	= $person_email;
			$bokRec->person_address	= $person_address;
			$bokRec->person_country = $person_country;
			$bokRec->person_country_code = Countries::find_by_name($person_country);
			
			
			$bokRec->person_city = $person_city;
			$bokRec->person_zpicode = $person_zpicode;
			$bokRec->person_message = $person_message;
			$bokRec->ip_address 	= $_SERVER['REMOTE_ADDR'];
			$bokRec->pay_type 		= 'Inquiry';
			$bokRec->sortorder 		= Bookinginfo::find_maximum();;
			$bokRec->added_date 	= registered();

			$db->begin();
			if($bokRec->save()) {
				$db->commit();
				$bookid = $db->insert_id();

				foreach(array_filter($no_pax) as $k=>$v) {
					$pkgPax = $no_pax[$k];
					$pkgId  = $package_title[$k];
					$pkgAmt = $package_price[$k];
					$totAmt = ($pkgPax*$pkgAmt);
					$sql = "INSERT tbl_booking_pkg 
							SET 
							booking_id = '$bookid', 
							package_id = '$pkgId',
							start_price = '$pkgAmt',
							tot_adult = '$pkgPax',
							total_amt = '$totAmt' ";

					$db->query($sql);
				}
				$message='Success !';
				echo json_encode(array("act"=>"success", "message"=>$message));	
			}
			else {
				$db->rollback();
				$message='Error !';
				echo json_encode(array("act"=>"error", "message"=>$message));
			}	
			break;

		case "delete":
			$id = $_REQUEST['id'];
			$record = Bookinginfo::find_by_id($id);
			log_action("Booking Request [".$record->person_fullname."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->query("DELETE FROM tbl_booking_pkg WHERE booking_id='{$id}'");
			$db->query("DELETE FROM tbl_bookinginfo WHERE id='{$id}'");			
			reOrder("tbl_bookinginfo", "sortorder");			
			
			$message  = sprintf($GLOBALS['basic']['deletedSuccess_'], "Booking Request '".$record->person_fullname."'");
			echo json_encode(array("action"=>"success","message"=>$message));
		break;

		case "sortpackage":
			$bookid  = $_REQUEST['bookid'];
			$sortIds = $_REQUEST['sortIds'];
			$myVal 	 = explode(';', $sortIds);

			if(!empty($myVal)) {				
				foreach(array_filter($myVal) as $key=>$val){
					$query = "UPDATE tbl_booking_pkg SET sortorder='$key' WHERE package_id='$val' AND booking_id='$bookid' ";
					$db->query($query);
				}
			}
			break;	

		case "startdate":
			$bookid  = $_REQUEST['bookid'];
			$pkgid  = $_REQUEST['pkgid'];
			$stdate  = $_REQUEST['stdate'];
			if(!empty($stdate)) {
				$query = "UPDATE tbl_booking_pkg SET start_date='$stdate' WHERE package_id='$pkgid' AND booking_id='$bookid' ";
				$db->query($query);
			}
			break;

		case "startprice":
			$bookid  = $_REQUEST['bookid'];
			$pkgid  = $_REQUEST['pkgid'];
			$sprice  = $_REQUEST['sprice'];
			if(!empty($sprice)) {
				$query = "UPDATE tbl_booking_pkg SET start_price='$sprice' WHERE package_id='$pkgid' AND booking_id='$bookid' ";
				$db->query($query);
			}
			break;

		case "tripstatus":
			$bookid  = $_REQUEST['bookid'];
			$pkgid  = $_REQUEST['pkgid'];
			$status  = $_REQUEST['status'];
			if(!empty($status)) {
				$query = "UPDATE tbl_booking_pkg SET trip_status='$status' WHERE package_id='$pkgid' AND booking_id='$bookid' ";
				$db->query($query);
			}
			break;

		case "admin_note":
			$book_id = addslashes($_POST['bookid']);
			$admin_note = addslashes($_POST['note']);
			$query = "UPDATE tbl_bookinginfo SET admin_note='$admin_note' WHERE id='$book_id' ";
			$db->query($query);
			break;

		case "sent_confirm":
			$recId = addslashes($_REQUEST['rid']);
			$bkRec = Bookinginfo::find_by_id(base64_decode($recId));

			if(!empty($bkRec)) {
				// Mail Sent
				$confirm_link = BASE_URL.'confirm-inquiry/'.$bkRec->accesskey;
				$rplybody='<table width="100%" border="0"  style=" ">
					<tr><td><p>Dear '.$bkRec->person_fullname.',</p></td></tr>
					<tr><td><p>Welcome to '.$sitename.'</p></td></tr>
					<tr><td><p>Thank you for engage with us.</p></td></tr>
					<tr><td>
					<p>Confirm your booking to click this link : <a href="'.$confirm_link.'" target="_blank">Confirm</a>
					<br /> OR <br />
					Copy paste the link below <br />
					'.$confirm_link.'
					</p></td></tr>
					<tr>
						<td><p>&nbsp;</p>
						<p>Thanking you,<br />
						'.$sitename.'
						</p></td>
					</tr>
				</table>';

				$rplymail = new PHPMailer(); // defaults to using php "mail()"	

				$rplymail->SetFrom($usermail, $sitename);
				$rplymail->AddReplyTo($usermail, $sitename);
				$rplymail->AddAddress($bkRec->person_email, $bkRec->person_fullname);				
				$rplymail->Subject    = "no-reply ".$sitename;				
				$rplymail->MsgHTML($rplybody);

				if(!$rplymail->Send()) { 					
					$message  = "Error ! Package confirmation mail not sent !";
					echo json_encode(array("action"=>"error","message"=>$message));			
				}
				else {
					$message  = "Success ! Package confirmation mail sent to requestre !";
					echo json_encode(array("action"=>"success","message"=>$message));			
				}
			}
			else {
				$message  = "Error ! Package confirmation mail not sent !";
				echo json_encode(array("action"=>"error","message"=>$message));		
			}
			break;

	}
?>