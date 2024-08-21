<script language="javascript">

function getLocation(){
	return '<?php echo BASE_URL;?>includes/controllers/ajax.bookinginfo.php';
}

/***************************************** Re ordering Users *******************************************/
$(document).ready(function() {
	oTable = $('#example').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers",		
	});

});

/***************************************** Social Record delete *******************************************/
function recordDelete(Re){
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"User")?>');															
	$('.pText').html('Click on yes button to delete this user permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: 'action=delete&id='+Re,
			   success: function(data){
				 var msg = eval(data);  
				 showMessage(msg.action,msg.message);
				 $('#'+Re).remove();
				 reStructureList(getTableId());
			   }
			});
		}else{
			Re = null;
		}
		$( ".botTempo").unbind( "click" );
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}


/***************************************** View Social link *******************************************/
function viewBooklist()
{
	window.location.href="<?php echo ADMIN_URL?>bookinginfo/list";
}

/***************************************** transaction Social link *******************************************/
function transactionRecord(Re)
{
	window.location.href="<?php echo ADMIN_URL?>bookinginfo/transaction/"+Re;
}

/***************************************** View Social link *******************************************/
function viewRecord(Re)
{
	window.location.href="<?php echo ADMIN_URL?>bookinginfo/view/"+Re;
}

$(document).ready(function() { get_total();
	jQuery('ul#admin-tripsort').sortable({
		update: function (event, ui) {			
			var bookid = $('ul#admin-tripsort').attr('data-bookid');
			var mySel  = ""; 
            $('table.oldsort').each(function(i){
                mySel = mySel + ';' + $(this).attr('csort');
            });
			var id		  = ui.item.context.id;
			var end_pos   = ui.item.index();				
			$.ajax({
				type: "POST",
				dataType:"JSON",
				url:  getLocation(),
				data: "action=sortpackage&sortIds="+mySel+"&bookid="+bookid,
					success: function(data){
					var msg = eval(data);
				}
			});
		}
	});

	$('input.start_date').datepicker({
		changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        minDate: '0',
        maxDate: '+2Y',
        onClose: function(selectedDate) {
        	var _parent = jQuery(this).parents('table.oldsort');
			var pk_id = _parent.attr('csort');
        	var bookid = $('ul#admin-tripsort').attr('data-bookid');

        	$.ajax({
				type: "POST",
				dataType:"JSON",
				url:  getLocation(),
				data: "action=startdate&pkgid="+pk_id+"&bookid="+bookid+"&stdate="+selectedDate,
					success: function(data){
					var msg = eval(data);
				}
			});
			get_total();
		}
	});
});

$(document).on('blur', 'input.start_price', function() {
	var _parent = jQuery(this).parents('table.oldsort');
	var pk_id = _parent.attr('csort');
	var bookid = $('ul#admin-tripsort').attr('data-bookid');
	var price = $(this).val();

	$.ajax({
		type: "POST",
		dataType:"JSON",
		url:  getLocation(),
		data: "action=startprice&pkgid="+pk_id+"&bookid="+bookid+"&sprice="+price,
			success: function(data){
			var msg = eval(data);
		}
	});
	get_total();

});

$(document).on('change', 'select.trip_status', function() {
	var _parent = jQuery(this).parents('table.oldsort');
	var pk_id = _parent.attr('csort');
	var bookid = $('ul#admin-tripsort').attr('data-bookid');
	var status = $(this).val();

	$.ajax({
		type: "POST",
		dataType:"JSON",
		url:  getLocation(),
		data: "action=tripstatus&pkgid="+pk_id+"&bookid="+bookid+"&status="+status,
			success: function(data){
			var msg = eval(data);
		}
	});
	get_total();

});

function get_total() {
	var tot_days=0; var tot_price=0;
	$('.trip_days').each(function(i) {      
        var _parent = jQuery(this).parents('table.oldsort');
        var status = _parent.find('select.trip_status').val();                
        if(status=='1') {
        	var days = $(this).html();
        	var price = _parent.find('input.start_price').val();
        	tot_days += parseInt(days);
        	tot_price += parseInt(price);
        }        
    });
    $('span.total_day').html(tot_days);
    $('span.total_price').html(tot_price);
}

$(document).on('blur', 'textarea.admin_note', function(){
	var textVal = $(this).val();
	var book_id = $(this).attr('data-id');	
	$.ajax({
		type: "POST",
		dataType:"JSON",
		url:  getLocation(),
		data: "action=admin_note&bookid="+book_id+"&note="+textVal,
			success: function(data){
			var msg = eval(data);
		}
	});
	
});

$(document).on('keydown', 'input.start_price', function (e) {
    // Allow: backspace, delete, tab, escape, enter and . and -
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190, 109, 189]) !== -1 ||
        // Allow: Ctrl+A
        (e.keyCode == 65 && e.ctrlKey === true) ||
        // Allow: home, end, left, right, down, up
        (e.keyCode >= 35 && e.keyCode <= 40)) {
        // let it happen, don't do anything
        return true;
    }
    // Ensure that it is a number and stop the keypress
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
        e.preventDefault();
        return false;
    }
    return true;
});

$(document).on('click', 'button.sentmail', function(e) {
	$('.MsgTitle').html('Do you want to sent confirmation mail ?');													
	$('.pText').html('Click on yes button to sent mail.');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	var recId = $(this).attr('data-id');
	
	$(".botTempo").on("click", function() {						
		var popAct = $(this).attr("id");					
		if(popAct=='yes') {
			$('button.sentmail').attr("disabled","true").html('Progress...');
			$.ajax({
				type: "POST",
				dataType:"JSON",
				url:  getLocation(),
				data: 'action=sent_confirm&rid='+recId,
				success: function(data) {
					var msg = eval(data);  
					$('button.sentmail').removeAttr("disabled").html('Sent confirmation mail');
					showMessage(msg.action,msg.message);

				}
			});
		}

		$( ".botTempo").unbind( "click" );
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
});
</script>