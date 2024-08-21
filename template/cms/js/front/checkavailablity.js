$(function() {    
  $('#checkIn').datepicker({
    changeMonth: true,
    changeYear: true,
    showButtonPanel: true,
    dateFormat: 'yy-mm-dd',
    minDate: '0',
    maxDate: '+2Y',
    onSelect: function(dateStr) {
            var d1 = $(this).datepicker("getDate");
            d1.setDate(d1.getDate() + 0); // change to + 1 if necessary
            var d2 = $(this).datepicker("getDate");
            d2.setDate(d2.getDate() + 180); // change to + 180 if necessary   
            $("#checkOut").datepicker("option", "minDate", d1);
            $("#checkOut").datepicker("option", "maxDate", d2); 

            var start = $("#checkIn").datepicker("getDate");
            var end   = $("#checkOut").datepicker("getDate");
            var days   = (end - start)/1000/60/60/24;
        
            if(end!=null)
              $(".total-night").html(days);    
              $('input[name=checkIn]').val($("#checkIn").val());
              $('input[name=checkOut]').val($("#checkOut").val());
              $('input[name=totNignt]').val(days);
              calculationRoom()
        }
  });

  $('#checkOut').datepicker({
    changeMonth: true,
    changeYear: true,
    showButtonPanel: true,
    dateFormat: 'yy-mm-dd',   
    minDate: $("#checkIn").datepicker("getDate"),
        maxDate: '+2Y',
        onSelect: function(){
          var start = $("#checkIn").datepicker("getDate");
          var end   = $("#checkOut").datepicker("getDate");
          var days   = (end - start)/1000/60/60/24;
      
          if(end!=null)
            $(".total-night").html(days);
            $('input[name=checkIn]').val($("#checkIn").val());
            $('input[name=checkOut]').val($("#checkOut").val());
            $('input[name=totNignt]').val(days);
            calculationRoom()
        }
  });
  

  $('.selectRooms').on('change',function(){
    var start  = $("#checkIn").datepicker("getDate");
    var end    = $("#checkOut").datepicker("getDate");
    if(start==null){
      $('#checkIn').focus();
      $('.selectRooms').prop('selectedIndex',0);
      return false;
    }
    if(end==null){
      $('#checkOut').focus();
      $('.selectRooms').prop('selectedIndex',0);
      return false;
    }

    var roomType = $(this).val();
    $('.mySelect').html('<option>Loading...</option>');
      $.ajax({
         type: "POST",
         dataType:"JSON",
         url:  "includes/controllers/ajax.package.php",
         data: "action=getRoomsdetails&rid="+roomType,
         success: function(data){
            var msg = eval(data);
            if(msg.result=='success'){
              $('.mySelect').removeAttr('disabled');
              $('#room_no').html(msg.room_no);
              $('#room_adult').html(msg.room_adult);
              $('#room_child').html(msg.room_child);
              $('#Standard_Room').html(msg.Standard_Room);

              calculationRoom();
            }
            if(msg.result=='unsuccess'){
              $('.mySelect').attr('disabled','true').html('<option>Choose</option>');
              $('#Standard_Room').html('');
            }            
         }
      })
    return false;  
  });

  // Add new Rooms
  $('.add-rooms').on('click',function(){
    $('.no-result').fadeOut();
    $('.room-calc').fadeIn();
    var room = new Array();
    room["type"] = $("#room_type").find('option:selected').attr('room');
    room['no_room'] = $("#room_no").val();
    room['adult'] = $("#room_adult").find('option:selected').attr('adult');
    room['chlid'] = $("#room_child").val();
    room['price'] = $(".total-cost").text();

    var newtr = '<tr>';
          newtr+='<td>'+room["type"]+'<input type="hidden" name="roomType[]" value="'+room["type"]+'"></td>';
          newtr+='<td>'+room["no_room"]+'<input type="hidden" name="roomNo[]" value="'+room["no_room"]+'"></td>';
          newtr+='<td>'+room["adult"]+'<input type="hidden" name="roomAdult[]" value="'+room["adult"]+'"></td>';
          newtr+='<td>'+room["chlid"]+'<input type="hidden" name="roomChild[]" value="'+room["chlid"]+'"></td>';
          newtr+='<td>'+room["price"]+'<input type="hidden" name="roomPrice[]" value="'+room["price"]+'"></td>';
          newtr+='<td><a href="javascript:void(0);" class="remove-room" id="'+room["price"]+'">X</a></td>';
        newtr+='</tr>';

    $('.selected-rooms').prepend(newtr);

    var totPrice  =  $("#total_price").text();    
        totPrice =   parseFloat(totPrice)+parseFloat(room["price"]);
        finalcalculation(totPrice);
  });

  // Remove Added rooms
  $('.selected-rooms').on('click',".remove-room", function () {  
    var this_price = $(this).attr('id');
      $(this).closest('tr').fadeOut(300, 0, function (){    
        var totPrice  =  $("#total_price").text();    
        totPrice =   parseFloat(totPrice)-parseFloat(this_price);
        $('#total_price').text(totPrice);
        finalcalculation(totPrice);

        if(totPrice==0){
          $('#checkIn').removeAttr('disabled');
          $('#checkOut').removeAttr('disabled');
          $('.no-result').fadeIn();
          $('.room-calc').fadeOut();
        }
      })    
  });

  // Price Calculation
  $('.mySelect').on('change',function(){
    calculationRoom();
  });

});

// Function for Final Calcuation
function finalcalculation(totPrice){
    // Disabled Datepicker inputs When added rooms
    $('#checkIn').attr('disabled','true');
    $('#checkOut').attr('disabled','true');

    // Total Room Price
   /* var totPrice  =  $("#total_price").text();    
        totPrice =   parseFloat(totPrice)+parseFloat(room["price"]);*/   
        $("#total_price").text(totPrice);
        $('input[name=total_price]').val(totPrice);

    // Total Discount Price
    var total_amount = $('input[name=total_price]').val();
    //var discount_price = ((total_amount/100)*15).toFixed(2);
    var discount_price = ((total_amount/100)*0).toFixed(2);
    var final_dis_price = parseFloat(total_amount) - parseFloat(discount_price);
        $('#final_dis_price').text(final_dis_price);
        $('input[name=final_dis_price]').val(final_dis_price);

    // Total Service Charge    
    var service_charge = ((final_dis_price/100)*10).toFixed(2);
        $('#service_charge').text(service_charge);
        $('input[name=service_charge]').val(service_charge);

    // Total Tax Price
    var a = +$('input[name=final_dis_price]').val();
    var b = +$('input[name=service_charge]').val();
    var tax_price = (((a + b ) /100)*13).toFixed(2);
        $('#tax_price').text(tax_price);
        $('input[name=tax_price]').val(tax_price);

    // Grand Total Price 
    var grand_total = (parseFloat(total_amount) - parseFloat(discount_price) + parseFloat(service_charge) + parseFloat(tax_price)).toFixed(2);
        $("#grand_total").text(grand_total);
        $('input[name=grand_total]').val(grand_total);
}

// Function for calculating individual cost
function calculationRoom(){
  var start  = $("#checkIn").datepicker("getDate");
  var end    = $("#checkOut").datepicker("getDate");
  var days   = (end - start)/1000/60/60/24;
  var noRoom = $('#room_no').val();
  var adultPrice = $('#room_adult').val();
  total = (parseFloat(noRoom)*parseFloat(adultPrice)*parseFloat(days));
  $('.total-cost').html(total);
}

$(document).ready(function(){
  jQuery('#frm-finalBooking').validationEngine({
    autoHidePrompt:true,
    autoPositionUpdate: true,
    promptPosition : 'bottomLeft'
  })
});             