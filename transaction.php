<?php ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
require_once("includes/initialize.php");
$sitename  = Config::getField('sitename',true);
$ctmplate  = Config::getCurrentTemplate('template');
$js_path   = BASE_URL."template/{$ctmplate}/js/jquery-2.2.4.min.js";

// Strip library
require_once('strip-config.php');

$paytype = !empty($_REQUEST['paytype'])?addslashes($_REQUEST['paytype']):'';
if(!empty($paytype)) { ?>
<!DOCTYPE html><html><head><title>Payment Transaction</title><script src="<?php echo $js_path;?>"></script><script>function post_to_url(t,e,n){n=n||"post";var i=document.createElement("form");i.setAttribute("method",n),i.setAttribute("action",t);for(var r in e){var u=document.createElement("input");u.setAttribute("type","hidden"),u.setAttribute("name",r),u.setAttribute("value",e[r]),i.appendChild(u)}document.body.appendChild(i),i.submit()}</script></head><body>
    <?php // Transaction package
    if($paytype=='package') {
        if(isset($_POST['stripeToken'])) {
            foreach($_POST as $key=>$val) { $$key=$val; }

            $row = Bookinginfo::find_by_token($trans_key);
            $_stripeToken = !empty($_POST['stripeToken'])?addslashes($_POST['stripeToken']):'';
            $psql="SELECT SUM(total_amt) AS total FROM `tbl_booking_pkg` WHERE `booking_id`='$row->id' ";
            $pquery=$db->query($psql);
            $prow  = $db->fetch_object($pquery);
            $pay_amt = !empty($prow)?$prow->total:'0';

            try {
                $customer = \Stripe\Customer::create(array(
                    'email'   => $row->person_email,
                    'source'  => $_stripeToken
                ));
                    
                $charge = \Stripe\Charge::create(array(
                    'customer' => $customer->id,
                    'amount'   => ($pay_amt*100),
                    'currency' => 'usd',
                    'description' => $row->person_first.' '.$row->person_last.' ('.$sitename.' / Order Id : '.$row->accesskey.')'
                ));
            } catch (\Stripe\Error\ApiConnection $e) {
                // Network communication with Stripe failed
                $_message= $e->getMessage();

            } catch (\Stripe\Error\InvalidRequest $e) {
                // Invalid parameters were supplied to Stripe's API
                $_message= $e->getMessage();

            } catch (\Stripe\Error\Api $e) {
                $_message= $e->getMessage();

            } catch (\Stripe\Error\Card $e) {
                // Since it's a decline, \Stripe\Error\Card will be caught
                $_message= $e->getMessage();

            } catch (\Stripe\Error\RateLimit $e) {
                // Too many requests made to the API too quickly
                $_message= $e->getMessage();

            } catch (\Stripe\Error\Authentication $e) {
                // Authentication with Stripe's API failed
                // (maybe you changed API keys recently)
                $_message= $e->getMessage();

            } catch (\Stripe\Error\Base $e) {
                // Display a very generic error to the user, and maybe send
                // yourself an email
                $_message= $e->getMessage();

            } catch (Exception $e) {
                // Something else happened, completely unrelated to Stripe
                $_message= $e->getMessage();
            }

            if (!empty($charge->id)) {
                $query="UPDATE tbl_bookinginfo SET 
                pay_type         = 'Strip',
                transaction_code = '".$charge->id."',
                confirm_date     = '".registered()."',
                confirm_ip       = '".$_SERVER['REMOTE_ADDR']."',
                status           = '1' 
                WHERE id='$row->id' ";
                $db->query($query); ?>
                <script>post_to_url('<?php echo BASE_URL;?>success', {'act_post':'transaction', 'order_id':'<?php echo  $row->accesskey;?>', 'trans_id':'<?php echo $charge->id;?>'});</script>
            <?php }
            else { ?>
                <script>post_to_url('<?php echo BASE_URL;?>unsucess', {'act_post':'transaction', 'message':'<?php echo  $_message;?>'});</script>            
            <?php }

        }
    } ?>
</body></html>    
<?php } ?>