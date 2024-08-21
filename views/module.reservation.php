<?php
/*
* Reservation Form
*/

$resresrv='';

if(defined('RESERVATION_PAGE')) {
	foreach($_POST as $key=>$val) { $$key=$val; }
	$chk_in  = !empty($check_in)?$check_in:date('Y-m-d');
	$chk_out = !empty($check_out)?$check_out: date('Y-m-d', strtotime("+1 day"));

	$resresrv.='<div class="header-title white" style="background-image:url('.IMAGE_PATH.'reserv-img.jpg);">
        <div class="container">
            <div class="title-base">                
                <h1>Reservation</h1>
                <hr class="anima" />
                <p>We are available 24 / 7 / 365</p>
            </div>
        </div>
    </div>';

	$resresrv.='<!-- Form | START -->
	<div class="section-empty">
        <div class="container content">
            <div class="row">
			    <form id="roombooking" name="roombooking" action="" method="post">
					<div class="col-sm-12">
						<div class="row"> 
							<div class=" col-sm-8">
								<div class="row">
									<div class="form-group col-sm-12">
										<h3 style="margin:0px;">Room List</h3>
									</div>';
									$pkgId  = Package::get_accommodationId();
									$subRec = Subpackage::get_relatedpkg($pkgId);

									if($subRec) {
										$resresrv.='<div class="col-sm-12 col-md-12 col-lg-12">
											<table class="table roomtypes">
												<tr>
													<th>Room Type</th>
													<th>Price Per Nights</th>
													<th>No. of Adults</th>											
													<th>No. of Child</th>
													<th>Extra Bed</th>
												</tr>';

												foreach($subRec as $recRow) {
													$totroom = $recRow->extra_bed;
													$totppl = $recRow->people_qnty;
													$priceArr = array('1'=>$recRow->onep_price, '2'=>$recRow->twop_price, '3'=>$recRow->threep_price);						

													$nos = unserialize($recRow->image);

													$resresrv.='<tr>
														<td rowspan="2" class="table_image" >
															<h4 style="margin-top:0;">'.$recRow->title.'</h4>
															<img src="'.IMAGE_PATH.'subpackage/'.$nos[0].'" alt="room image" class="img-responsive" width="120px"/>
														</td>
													</tr>';

													
													$resresrv.='<tr class="table_contents">
														<td>
															<span class="display_hide">Price Per Nights :</span>'.$recRow->currency.' '.$priceArr[1].'
															<input type="hidden" name="roomprice['.$recRow->title.'][]" value="'.$recRow->currency.' '.$priceArr[1].'" />
														</td>
														<td>
															<select name="ppqnty['.$recRow->title.'][]" class="form-control sel-price" data-price="'.$priceArr[1].'">
															<option value="N/A">No. Of Adults</option>';
															for($i=1; $i<=$totppl; $i++) {
																$resresrv.='<option value="'.$i.'">'.$i.'</option>';
															}
															$resresrv.='</select>
														</td>
														
														<td>
															<select name="roomqnty['.$recRow->title.'][]" class="form-control">
																<option value="N/A">No. Of Child</option>';
																for($r=1; $r<=$totroom; $r++)
																{
																	$resresrv.='<option value="'.$r.'">'.$r.'</option>';
																}
															$resresrv.='</select>
														</td>
														<td>
															<select name="extrabed['.$recRow->title.'][]" class="form-control"> 
																<option value="N/A">Extra Bed</option>
																<option value="Yes">Yes</option>
																<option value="No">No</option>
															</select>
															<p style=" margin-bottom: 0;font-size: 12px;margin-top: 2px;">Extra Price '.$recRow->currency.' '.set_na($recRow->discount).'</p>
															<input type="hidden" name="extrabedrate['.$recRow->title.'][]" value="'.$recRow->currency.' '.set_na($recRow->discount).'" />
														</td>				
													</tr>';
												
											}
											$resresrv.='</table>
										</div>
										<div class="clear"></div>';
									}

								$resresrv.='</div>
							</div>

							<div class=" col-sm-4">
								<div class="row">
									<!-- <div class="form-group col-sm-12">
										<h4 style="margin:0px;">Total Amount : '.$recRow->currency.' <span class="totp">0</span> /-</h4>
									</div> -->

									<div class="form-group col-sm-12">
										<h3 style="margin:0px;">Personal Details</h3>
									</div>
									<div class="form-group col-sm-12">
										<input type="text" class="form-control" name="fullname" placeholder="Full Name *" >
									</div>
									<div class="form-group col-sm-12">
										<input type="text" class="form-control" name="mailaddress" placeholder="Email *" >
									</div>
									<div class="form-group col-sm-12">
										<input type="text" class="form-control" name="phone" placeholder="Phone *" >
									</div>
									<div class="form-group col-sm-12">
										<input type="text" class="form-control" name="address" placeholder="Address *" >
									</div>
									<div class="form-group col-sm-12">			
										<select name="country" class="form-control" class="show_fields">
											<option value="">Choose Country *</option>';
											$contRec = Countries::find_all();
											foreach($contRec as $contRow){
												$resresrv.='<option value="'.$contRow->country_name.'">'.$contRow->country_name.'</option>';
											}
										$resresrv.='</select>
									</div>

									<div class="form-group col-sm-12">
										<h6 style="margin:0px;">Reservation Information</h6>
									</div>
									<div class="form-group col-sm-6">
										<input type="text" name="checkin" class="form-control" id="checkin" placeholder="Check-In *" value="'.$chk_in.'">
									</div>
									<div class="form-group col-sm-6">
										<input type="text" name="checkout" class="form-control" id="checkout" placeholder="Check-Out *" value="'.$chk_out.'">
									</div>
									<div class="form-group col-sm-12">
										<textarea name="special_offer" class="form-control" placeholder="Special Requirements or any Special Packages with Special Offer"></textarea>
									</div>
									
									<div class="form-group col-sm-6">
										<img src="'.BASE_URL.'captcha/imagebuilder.php?rand=310333" border="1" class="form-control" onclick="updateCaptcha(this);">				
									</div>
									<div class="form-group col-sm-6">
										<input placeholder="Enter Security Code" type="text" class="form-control" name="userstring" maxlength="5" />
									</div>
									<div class="form-group col-sm-12">
										<input id="btn-booking" name="submit" type="submit" class="btn btn-primary" value="Submit">
									</div>

								</div>
							</div>

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>';
}

$jVars['module:reservationform'] = $resresrv;