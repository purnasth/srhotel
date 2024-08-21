<link href="<?php echo ASSETS_PATH; ?>uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<?php
$moduleTablename  = "tbl_social_networking"; // Database table name
$moduleId 		  = 11;				// module id >>>>> tbl_modules
$moduleFoldername = "social";		// Image folder name
	
if(isset($_GET['page']) && $_GET['page'] == "social" && isset($_GET['mode']) && $_GET['mode']=="list"):   
clearImages($moduleTablename, $moduleFoldername);
clearImages($moduleTablename, $moduleFoldername."/thumbnails");    
?>
<h3>
List Social Links
<a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="AddNewSocial();">
    <span class="glyph-icon icon-separator">
        <i class="glyph-icon icon-plus-square"></i>
    </span>
    <span class="button-content"> Add New </span>
</a>
</h3>
<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">    
    <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
        <thead>
            <tr>
               <th class="text-center">S.No.</th>
               <th>Icon</th>
               <th class="text-center">Link</th>      
               <th class="text-center"><?php echo $GLOBALS['basic']['action'];?></th>
            </tr>
        </thead> 
            
        <tbody>
            <?php $records = SocialNetworking::find_by_sql("SELECT * FROM ".$moduleTablename." ORDER BY sortorder ASC "); 
                  foreach($records as $record): ?>    
            <tr id="<?php echo $record->id;?>">
                <td class="text-center"><?php echo $record->sortorder;?></td>                
                <td>
                    <div class="col-md-1">                                                                                    
                        <a href="javascript:void(0);" onClick="editRecord(<?php echo $record->id;?>);" class="loadingbar-demo btn small" title="<?php echo $record->title;?>">
                            <img src="<?php echo IMAGE_PATH;?>social/<?php echo $record->image;?>" alt="<?php echo $record->title;?>" width="25">
                        </a>
                    </div> 
                </td>                              
                <td><?php echo !empty($record->linksrc)?$record->linksrc:'';?></td>
                <td class="text-center">
                    <?php   
                        $statusImage = ($record->status == 1) ? "bg-green" : "bg-red" ; 
                        $statusText = ($record->status == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub'] ;                        
                    ?>                                             
                    <a href="javascript:void(0);" class="btn small <?php echo $statusImage;?> tooltip-button statusToggler" data-placement="top" title="<?php echo $statusText;?>" status="<?php echo $record->status;?>" id="imgHolder_<?php echo $record->id;?>" moduleId="<?php echo $record->id;?>">
                        <i class="glyph-icon icon-flag"></i>
                    </a>
                    <a href="javascript:void(0);" class="loadingbar-demo btn small bg-blue-alt tooltip-button" data-placement="top" title="Edit" onclick="editRecord(<?php echo $record->id;?>);">
                        <i class="glyph-icon icon-edit"></i>
                    </a>
                    <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top" title="Remove" onclick="recordDelete(<?php echo $record->id;?>);">
                        <i class="glyph-icon icon-remove"></i>
                    </a>
					<input name="sortId" type="hidden" value="<?php echo $record->id;?>">
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    </div>
</div>

<?php elseif(isset($_GET['mode']) && $_GET['mode'] == "addEdit"): 
if(isset($_GET['id']) && !empty($_GET['id'])):
    $socialId    = addslashes($_REQUEST['id']);
    $socialInfo  = SocialNetworking::find_by_id($socialId);
    $status      = ($socialInfo->status==1)?"checked":" ";
    $unstatus    = ($socialInfo->status==0)?"checked":" ";
endif;  
?>

<h3>
    <?php echo (isset($_GET['id']))?'Edit Social Link':'Add Social Link';?>
    <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="viewSociallist();">
        <span class="glyph-icon icon-separator">
            <i class="glyph-icon icon-arrow-circle-left"></i>
        </span>
        <span class="button-content"> Back </span>
    </a>
</h3>
<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">
        <form action="" class="col-md-10 center-margin" id="social_frm">
            
            <div class="form-row">
                <div class="form-label col-md-2">
                    <label for="">
                        Title :
                    </label>
                </div>                
                <div class="form-input col-md-20">
                    <input placeholder="Social Link Title" class="col-md-4 validate[required,length[0,200]]" type="text" name="title" id="title" value="<?php echo !empty($socialInfo->title)?$socialInfo->title:"";?>">
                </div>                
            </div>

            <div class="form-row">
                <div class="form-label col-md-2">
                    <label for="">
                        Link :
                    </label>
                </div>                
                <div class="form-input col-md-20">
                    <input placeholder="Social Link " class="col-md-4 validate[required,length[0,250]]" type="text" name="linksrc" id="linksrc" value="<?php echo !empty($socialInfo->linksrc)?$socialInfo->linksrc:"";?>">
                </div>                
            </div>

            <div class="form-row add-image">
                <div class="form-label col-md-2">
                    <label for="">
                        Image :
                    </label>
                </div> 
                
                <?php if(!empty($socialInfo->image)):?>
                <div class="col-md-1" id="removeSavedimg<?php echo $socialInfo->id;?>">
                    <div class="infobox info-bg">                                                               
                        <div class="button-group" data-toggle="buttons">
                            <span class="float-left">
                                <?php 
                                    if(file_exists(SITE_ROOT."images/social/".$socialInfo->image)):
                                        $filesize = filesize(SITE_ROOT."images/social/".$socialInfo->image);
                                        echo 'Size : '.getFileFormattedSize($filesize);
                                    endif;
                                ?>
                            </span> 
                            <a class="btn small float-right" href="javascript:void(0);" onclick="deleteSavedSocialimage(<?php echo $socialInfo->id;?>);">
                                <i class="glyph-icon icon-trash-o"></i>
                            </a>                                                       
                        </div>
                        <img src="<?php echo IMAGE_PATH.'social/thumbnails/'.$socialInfo->image;?>"  style="width:100%"/>                                                                                   
                    </div> 
                </div>
                <?php endif;?>
                <div class="form-input col-md-10 uploader <?php echo !empty($socialInfo->image)?"hide":"";?>">          
                   <input type="file" name="social_icon" id="social_icon" class="transparent no-shadow">
                   <label><small>Image Dimensions (<?php echo Module::get_properties($moduleId,'imgwidth');?> px X <?php echo Module::get_properties($moduleId,'imgheight');?> px)</small></label>
                </div>                
                <!-- Upload user image preview -->
                <div id="preview_Image"><input type="hidden" name="imageArrayname" value="<?php echo !empty($socialInfo->image)?$socialInfo->image:"";?>" class="" /></div>
            </div>

            <div class="form-row">   
                <div class="form-label col-md-2">
                    <label for="">
                        Published :
                    </label>
                </div>             
                <div class="form-checkbox-radio col-md-9">
                    <input type="radio" class="custom-radio" name="status" id="check1" value="1" <?php echo !empty($status)?$status:"checked";?>>
                    <label for="">Published</label>
                    <input type="radio" class="custom-radio" name="status" id="check0" value="0" <?php echo !empty($unstatus)?$unstatus:"";?>>
                    <label for="">Un-Published</label>
                </div>                
            </div> 

            <button btn-action='0' type="submit" name="submit" class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                <span class="button-content">
                    Save
                </span>
            </button>
            <button btn-action='1' type="submit" name="submit" class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                <span class="button-content">
                    Save & More
                </span>
            </button>
            <button btn-action='2' type="submit" name="submit" class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                <span class="button-content">
                    Save & quit
                </span>
            </button>

            <input myaction='0' type="hidden" name="idValue" id="idValue" value="<?php echo !empty($socialInfo)?$socialInfo->id:0;?>" />
        </form>
    </div>
</div>    

<script type="text/javascript" src="<?php echo ASSETS_PATH;?>uploadify/jquery.uploadify.min.js"></script>
<script type="text/javascript">
   // <![CDATA[
    $(document).ready(function() {
    $('#social_icon').uploadify({
    'swf'  : '<?php echo ASSETS_PATH;?>uploadify/uploadify.swf',
    'uploader'   : '<?php echo ASSETS_PATH;?>uploadify/uploadify.php',
    'formData'   : {PROJECT : '<?php echo SITE_FOLDER;?>',targetFolder:'images/social/',thumb_width:200,thumb_height:200},
    'method'     : 'post',
    'cancelImg'  : '<?php echo BASE_URL;?>uploadify/cancel.png',
    'auto'       : true,
    'multi'      : false,   
    'hideButton' : false,   
    'buttonText' : 'Upload Image',
    'width'      : 100,
    'height'     : 25,
    'removeCompleted' : true,
    'progressData' : 'speed',
    'uploadLimit' : 100,
    'fileTypeExts' : '*.gif; *.jpg; *.jpeg;  *.png; *.GIF; *.JPG; *.JPEG; *.PNG;',
     'buttonClass' : 'button formButtons',
   /* 'checkExisting' : '/uploadify/check-exists.php',*/
    'onUploadSuccess' : function(file, data, response) {
        $('#uploadedImageName').val('1');
        var filename =  data;
        $.post('<?php echo BASE_URL;?>apanel/social/uploaded_image.php',{imagefile:filename},function(msg){           
               $('#preview_Image').html(msg).show();
            }); 
            
    },
    'onDialogOpen'  : function(event,ID,fileObj) {      
    },
    'onUploadError' : function(file, errorCode, errorMsg, errorString) {
           alert(errorMsg);
        },
    'onUploadComplete' : function(file) {
          //alert('The file ' + file.name + ' was successfully uploaded');
        }   
  });
});
    // ]]>
</script>
<?php endif; ?>