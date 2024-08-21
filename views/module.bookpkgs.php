<?php 
$resbpkg='';

if(defined('BOOK_PAGE')) {
	$slug = !empty($_REQUEST['slug'])?addslashes($_REQUEST['slug']):'';
	$sRec = Subpackage::find_by_slug($slug);

	if(!empty($sRec)) {
		$resbpkg.='<section class="row final-inner-header" style="background-image:url('.IMAGE_PATH.'static/book-img.jpg); background-repeat: no-repeat; ">
	 	</section>
	 	<section class="row final-breadcrumb">
		 	<div class="container">
		 		<ol class="breadcrumb">
		 			<li><a href="'.BASE_URL.'home">Home</a></li>
		 			<li class="active">Book Package</li>
		 		</ol>
		 	</div>
	 	</section>
	 	<section class="container clearfix common-pad about-info-box">    
			<div class="row">  
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="sec-header3">
						<h2>Book Package</h2>
						<h3>Jagatpur Booking Form</h3>
					</div>
					<div class="row">					
						<form action="'.BASE_URL.'payment-transaction/package" method="post" id="frm-booking">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<table class="table">
									<tr>
										<th>Package</th>
										<th>Price('.$sRec->onep_price.')</th>
										<th>No. Of Pax.</th>
										<th>Total Amount</th>
									</tr>

									<tr><td colspan="4">Main Package</td></tr>
									<tr class="parent">
										<td>
											<a class="text-info" href="'.BASE_URL.'subpackage/'.$sRec->slug.'" target="_blank">'.$sRec->title.'</a>
											<input type="hidden" name="package_title[]" value="'.$sRec->id.'">
										</td>
										<td>
											'.$sRec->threep_price.'
											<input type="hidden" name="package_price[]" value="'.$sRec->threep_price.'">
										</td>
										<td class="form-group col-sm-2">
											<input type="text" name="no_pax[]" class="form-control"/>
										</td>
										<td class="text-center totalamt">0</td>
									</tr>';

									$srelRec = Subpackage::get_relatedpkg($sRec->type, $sRec->id);
									if(!empty($srelRec)) {
										$resbpkg.='<tr><td colspan="4">Additional Package</td></tr>';
										foreach($srelRec as $row) {
										$resbpkg.='<tr class="parent">
											<td>
												<a class="text-info" href="'.BASE_URL.'subpackage/'.$row->slug.'" target="_blank">'.$row->title.'</a>
												<input type="hidden" name="package_title[]" value="'.$row->id.'">
											</td>
											<td>
												'.$row->threep_price.'
												<input type="hidden" name="package_price[]" value="'.$row->threep_price.'">
											</td>
											<td class="form-group col-sm-2">
												<input type="text" name="no_pax[]" class="form-control"/>
											</td>
											<td class="text-center totalamt">0</td>
										</tr>';
										}
									}
									$resbpkg.='<tr>
										<td colspan="3">Grand Total</td>
										<td class="text-center grand-total">0</td>
									</tr>

								</table>

							</div>

							<div class="col-lg-6 col-md-6 col-xs-12">
<div class="row">
								<div class="form-group col-sm-6">
						            <input id="person_checkin" name="person_checkin" type="text" placeholder="Join Date" class="form-control"/>						            
						        </div>
						        <div class="clearfix"></div>
								<div class="form-group col-sm-6">
						            <input name="person_first" type="text" placeholder="First Name" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_last" type="text" placeholder="Last Name" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_contact" type="text" placeholder="Contact No." class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_email" type="text" placeholder="Email Address" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_address" type="text" placeholder="Address" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <select name="person_country" class="form-control">
						            	<option value="">Choose</option>';
						            	$contRec = Countries::find_all();
										foreach($contRec as $contRow){
											$resbpkg.='<option value="'.$contRow->country_name.'">'.$contRow->country_name.'</option>';
										}
						            $resbpkg.='</select>					            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_city" type="text" placeholder="City" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_zpicode" type="text" placeholder="Zip Code" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-12">
						            <textarea name="person_message" placeholder="Message" class="form-control"></textarea>
						        </div>						        
				                <div class="form-group col-sm-6">
				        			<img src="'.BASE_URL.'captcha/imagebuilder.php?rand=310333" border="1"  onclick="updateCaptcha(this);">						
				        		
				                    <input placeholder="Enter Security Code" type="text" class="form-control" name="userstring" maxlength="5" />
				                </div>
						        <div class="form-group col-sm-12">
						        	<input type="hidden" name="trans_key" value="'.@randomKeys('10').'"/>
									<input type="hidden" name="publishable_key" value="'.$stripe['publishable_key'].'"/>
									<input type="hidden" name="pay_amount" value="0"/>
						            <button class="btn btn-primary pay-btn" type="submit">Pay Now</button>
						        </div>
</div>
							</div>
						</form>						
	   				</div>
				</div>
			</div>
		</section>';
	}
}

$jVars['module:bookpkg_detail'] = $resbpkg;