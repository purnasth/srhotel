<?php
$moduleTablename  = "tbl_bookinginfo"; // Database table name
$moduleId 		  = 24;				// module id >>>>> tbl_modules
$moduleFoldername = "";		// Image folder name
	
if(isset($_GET['page']) && $_GET['page'] == "bookinginfo" && isset($_GET['mode']) && $_GET['mode']=="list"):      
?>
<h3>Trip Booking List</h3>
<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">    
    <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
        <thead>
            <tr>
               <th class="text-center">S.No.</th>
               <th>Order Id</th>
               <th>Fullname</th>
               <th>Email</th>      
               <th class="text-center">Contact No.</th>      
               <th class="text-center">Pay Type</th>      
               <th class="text-center"><?php echo $GLOBALS['basic']['action'];?></th>
            </tr>
        </thead> 
            
        <tbody>
            <?php $records = Bookinginfo::find_by_sql("SELECT * FROM ".$moduleTablename." ORDER BY sortorder DESC "); 
            $cn='1';
            foreach($records as $record): ?>    
            <tr id="<?php echo $record->id;?>">
                <td class="text-center"><?php echo $cn;?></td>                
                <td><?php echo $record->accesskey;?></td>
                <td><?php echo $record->person_first.' '.$record->person_last;?></td> 
                <td><?php echo $record->person_email;?></td>
                <td><?php echo $record->person_contact;?></td>

                <td class="text-center"><?php echo $record->pay_type;?></td>
                <td class="text-center">                    
                    <?php if($record->status!='1')  { ?> 
                    <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top" title="Remove" onclick="recordDelete(<?php echo $record->id;?>);">
                        <i class="glyph-icon icon-remove"></i>
                    </a>
                    <?php } 
                    else { ?>
                    <a href="javascript:void(0);" class="loadingbar-demo btn small bg-green tooltip-button" data-placement="top" title="View" onclick="viewRecord(<?php echo $record->id;?>);">
                        <i class="glyph-icon icon-eye"></i>
                    </a>
                    <?php } ?>
                </td>
            </tr>
            <?php $cn++; endforeach; ?>
        </tbody>
    </table>
    </div>
</div>

<?php elseif(isset($_GET['mode']) && $_GET['mode'] == "view"): 
if(isset($_GET['id']) && !empty($_GET['id'])):
    $bookingId    = addslashes($_REQUEST['id']);
    $bookinginfo  = Bookinginfo::find_by_id($bookingId);
endif;  
?>

<h3>
    Trip Confirm Transaction
    <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="viewBooklist();">
        <span class="glyph-icon icon-separator">
            <i class="glyph-icon icon-arrow-circle-left"></i>
        </span>
        <span class="button-content"> Back </span>
    </a>
</h3>

<div class="example-box">
    <div class="example-code">

        <div class="col-sm-12">
            <h4>Confirm Packages</h4>
            <table class="table">                     
                <tr><th>Package Name</th><th>Price(Us$)</th><th>No. Of Pax.</th><th>Total Amount</th></tr>
            <?php $sql="SELECT package_id, start_price, tot_adult, total_amt FROM tbl_booking_pkg WHERE booking_id='$bookinginfo->id' ORDER BY booking_id ASC ";
            $query = $db->query($sql);
            $tot = $db->num_rows($query);
            $trip_price='0';
            if($tot>0) { 
                while($row=$db->fetch_object($query)) { 
                $pkgRec = subPackage::find_by_id($row->package_id); ?>                
                    <tr><td><a href="<?php echo BASE_URL.'subpackage/'.$pkgRec->slug;?>" target="_blank"><?php echo $pkgRec->title;?></a></td>                    
                    <td><?php echo $row->start_price;?></td>
                    <td><?php echo $row->tot_adult;?></td>
                    <td><?php echo $row->total_amt;?></td></tr>  
                    <?php $trip_price += $row->total_amt;
                }
            } ?>
            <td colspan="3"><strong>Total Price (Us$)</strong></td><td><?php echo $trip_price;?></td></tr>
            </table>
        </div>
        
        <div class="col-sm-4">
            <h4>Personal Information</h4>
            <ul>                
                <li><strong>Full Name :</strong> <?php echo $bookinginfo->person_first.' '.$bookinginfo->person_last;?></li>
                <li><strong>Email Address :</strong> <?php echo $bookinginfo->person_email;?></li>
                <li><strong>Country :</strong> <?php echo $bookinginfo->person_country;?></li>
                <li><strong>Country Code :</strong> <?php echo $bookinginfo->person_country_code;?></li>
                <li><strong>City :</strong> <?php echo $bookinginfo->person_city;?></li>
                <li><strong>Address :</strong> <?php echo $bookinginfo->person_address;?></li>
                <li><strong>Zip code :</strong> <?php echo $bookinginfo->person_zipcode;?></li>
                <li><strong>Contact No. :</strong> <?php echo $bookinginfo->person_contact;?></li>
                <li><strong>Comments :</strong> <?php echo $bookinginfo->person_message;?></li>
            </ul>
        </div>        

        <div class="col-sm-4">
            <h4>Information</h4>
            <ul>            
                <li><strong>Join Date :</strong> <?php echo set_na($bookinginfo->person_checkin);?></li>
                <li><strong>Order Code :</strong> <?php echo set_na($bookinginfo->accesskey);?></li>
                <li><strong>Inquiry Date :</strong> <?php echo set_na($bookinginfo->added_date);?></li>
                <li><strong>Inquiry IP :</strong> <?php echo set_na($bookinginfo->ip_address);?></li>
            </ul>
        </div>

        <div class="col-sm-4">
            <h4>Payment Information</h4>
            <ul>                
                <li><strong>Getway :</strong> <?php echo set_na($bookinginfo->pay_type);?></li>
                <li><strong>Transaction Id :</strong> <?php echo set_na($bookinginfo->transaction_code);?></li>
                <li><strong>Amount :</strong> US$ <?php echo $trip_price;?>/-</li>
                <li><strong>Confirm Date :</strong> <?php echo set_na($bookinginfo->confirm_date);?></li>
                <li><strong>Confirm IP :</strong> <?php echo set_na($bookinginfo->confirm_ip);?></li>
            </ul>
        </div>

        <div class="clearfix"></div>
    </div>
</div>   
<?php endif; ?>