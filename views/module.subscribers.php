<?php
$result = '';
$result.='<section id="cta">
<div id="result-newsletter"></div>
<div class="container">
<div class="row">
<div class="col-md-4 col-sm-9 col-xs-12">
<h4 style="font-size: 20px;">SUBSCRIBE TO OUR NEWSLETTER</h4>
</div>
<form action="" method="post" class="form_subscribe" role="form" id="form_subscribe">
<div class="col-md-5 col-sm-9 col-xs-12">
    <input type="email" id="email" name="subscribe_email"  class="form-control" placeholder="E-MAIL ADDRESS" style="padding: 23px;" required>
</div>
<div class="col-md-3 col-sm-3 col-xs-12">
<input type="submit" class="btn btn-cta text-right" id="btn-submit" value="Subscribe">
</form>
</div>

</div>
</div>
</section>';
$jVars["module:subscribe_form"] = '';//$result;
?>