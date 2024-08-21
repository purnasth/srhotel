<?php 
$resbking=$resinbking='';

$booking_type = Config::getField('book_type', true);
$booking_page = Config::getField('hotel_page', true);
$booking_code = Config::getField('hotel_code', true);
$chk_in  = date('Y-m-d');
$chk_out = date('Y-m-d', strtotime("+1 day"));

// Default Reservation
if($booking_type==1) {
    $resbking.='<form action="'.BASE_URL.'reservation" method="post" id="default-form">
        <div class="form-group">
            <div class="col-sm-3">
                <p>Check-in</p>
                <input name="check_in" type="text" id="checkin" class="form-control" placeholder="Check In" value="'.$chk_in.'"/>
            </div>
            <div class="col-sm-3">
                <p>Check-out</p>
                <input name="check_out" type="text" id="checkout" class="form-control" placeholder="Check Out" value="'.$chk_out.'"/>
            </div>
        </div>
        <button id="btn-book" class="anima-button circle-button btn-sm btn" style="top: 34px;"><i class="fa fa-check"></i>Reservation</button>
    </form>';
}

	

// Nepalhotel 
if($booking_type==2) {
    $resbking.='<form action="'.BASE_URL.$booking_page.'" method="get" id="nepalhotel-form" >
        <input type="hidden" name="nepalhotel_code" value="'.$booking_code.'">
        <div class="col-sm-12">
            <div class="form-group  col-md-4">
            
                <input type="text" class="form-control" name="nepalhotel_check_in" id="checkin" placeholder="Check In" readonly="readonly" value="'.$chk_in.'">
            </div>
            <div class="form-group col-md-4">
            
                <input type="text" class="form-control" name="nepalhotel_check_out" id="checkout" placeholder="Check Out" readonly="readonly" value="'.$chk_out.'">
            </div>

            <div class="ser-in-box col-md-4">
                <button type="submit" class="button-small-solid" id="btn-book">Book Now</button>
            </div>
        </div>
    </form>';

    $resinbking.='<div class="form-inner row">
    <form action="'.BASE_URL.$booking_page.'" method="get" id="nepalhotel-form" target="_blank">
        <input type="hidden" name="nepalhotel_code" value="'.$booking_code.'">
        <div class="col-md-12">
            <b>Check In</b>
            <input type="text" class="form-control" name="nepalhotel_check_in" id="checkin" placeholder="Check In" value="'.$chk_in.'">
        </div>
        <div class="col-md-12">
            <b>Check Out</b>
            <input type="text" class="form-control" name="nepalhotel_check_out" id="checkout" placeholder="Check Out"  value="'.$chk_out.'">
        </div>
        <div class="col-md-12">
            <div class="chk-button">
                <button type="submit" class="button-small-solid" id="btn-book">Book Now</button>
            </div>
        </div>
    </form></div>';

}

// Fastbooking
if($booking_type==3) {
    $resbking.='<form target="dispoprice" name="idForm" action="http://www.fastbookings.biz/DIRECTORY/'.$booking_page.'" id="fastbooking-form">
        <div class="form-group">
            <div class="col-sm-3">
                <p>Check-in</p>
                <input name="arrival" type="text" id="checkin" class="form-control" placeholder="Check In" value="'.$chk_in.'"/>
            </div>
            <div class="col-sm-3">
                <p>Check-out</p>
                <input name="departure" type="text" id="checkout" class="form-control" placeholder="Check Out" value="'.$chk_out.'"/>
                <input type="hidden" name="showPromotions" value="1">
                <input type="hidden" name="langue" value="">        
                <input type="hidden" name="adulteresa" value="1">
                <input type="hidden" name="enfantresa" value="">
                <input type="hidden" name="Clusternames" value="'.$booking_code.'">
                <input type="hidden" name="Hotelnames" value="'.$booking_code.'">
            </div>
        </div>
        <button name="B1" id="btn-book" class="anima-button circle-button btn-sm btn" style="top: 34px;"><i class="fa fa-check"></i>Reservation</button>
    </form>';

}

// Booking.com
if($booking_type==4) {
    $resbking.='<form action="http://www.booking.com/hotel/np/'.$booking_page.'" method="get" target="booking_popup" id="booking-form">
        <div class="form-group">
            <div class="col-sm-3">
                <p>Check-in</p>
                <input name="check_in" type="text" id="checkin" class="form-control" placeholder="Check In" value="'.$chk_in.'"/>
            </div>
            <div class="col-sm-3">
                <p>Check-out</p>
                <input name="check_out" type="text" id="checkout" class="form-control" placeholder="Check Out" value="'.$chk_out.'"/>
            </div>
        </div>
        <input type="hidden" name="aid" value="330843" />
        <input type="hidden" name="hotel_id" value="'.$booking_code.'" />
        <input type="hidden" name="lang" value="en" />
        <input type="hidden" name="pb" value="" />
        <input type="hidden" name="stage" value="0" />
        <input type="hidden" name="hostname" value="www.booking.com" />
        <input type="hidden" name="checkin_monthday" class="checkin-monthday" value="'.date('d').'" />
        <input type="hidden" name="checkin_year_month" class="checkin-year-month" value="'.date('Y-m').'" />
        <input type="hidden" name="checkout_monthday" class="checkout-monthday" value="'.date('d', strtotime('+1 day')).'" />
        <input type="hidden" name="checkout_year_month" class="checkout-year-month" value="'.date('Y-m').'" />
        <button id="btn-book" class="anima-button circle-button btn-sm btn" style="top: 34px;"><i class="fa fa-check"></i>Reservation</button>
    </form>';
}

$jVars['module:booking-form'] = $resbking;
$jVars['module:inner-booking-form'] = $resinbking;

$script='';

// Fastbooking
if($booking_type==3) {
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fbparam.js"></script>'."\n";
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fblib.js"></script>'."\n";
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fbfulltrack.js"></script>'."\n";
}

$jVars['footer:script'] = $script;