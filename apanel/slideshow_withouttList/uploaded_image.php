<?php
include_once('../../includes/initialize.php');
if(!isset($_SESSION['imageNameArr'])){ $_SESSION['imageNameArr']=""; }
$_SESSION['imageNameArr'][] = $_POST['imagefile']; 
$imageNameArr =  $_SESSION['imageNameArr'];
$deleteid = rand(0,99999);
if(!empty($imageNameArr)):
foreach($imageNameArr as $key=>$val):?>
<div class="col-md-2" id="previewUserimage<?php echo $deleteid;?>">
    <div class="infobox info-bg">
        <img src="<?php echo IMAGE_PATH.'gallery/thumbnails/'.$val;?>"  style="width:100%"/>
        <a href="javascript:void(0);" onclick="deleteTempimage(<?php echo $deleteid;?>);">
            <span class="badge badge-absolute float-right bg-red" style="right: -10px !important;">
                <i class="glyph-icon icon-clock-os"></i>
            </span>
        </a>
        <input type="hidden" name="imageArrayname[]" value="<?php echo $val;?>" class="validate[required,length[0,250]]" />
        <input type="text" id="title" name="title[]" placeholder="Title" class="validate[required,length[0,250]]" style="padding: 0;">
    </div> 
</div>
<?php endforeach; endif;  
//uplodify
  if(isset($_SESSION['imageNameArr'])){
   if(count($_SESSION['imageNameArr'])>0){
      foreach($_SESSION['imageNameArr'] as $key=>$val)
      { 
         @unlink(IMAGE_PATH.'gallery/thumbnails/'.$val);
      	 @unlink(IMAGE_PATH.'gallery/'.$val);
      }	 
    	unset($_SESSION['imageNameArr']);
       }
  }
//uplodify
?>
