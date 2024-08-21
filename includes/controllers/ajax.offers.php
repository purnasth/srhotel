<?php 
	// Load the header files first
	header("Expires: 0"); 
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
	header("cache-control: no-store, no-cache, must-revalidate"); 
	header("Pragma: no-cache");

	// Load necessary files then...
	require_once('../initialize.php');
	
	$action = $_REQUEST['action'];
	
	switch($action) 
	{		
		case "add":	
			$record = new Offers();
			
			$record->slug 			= create_slug($_REQUEST['title']);
			$record->title 			= $_REQUEST['title'];
			$record->image			= $_REQUEST['imageArrayname'];
			$record->linksrc 		= $_REQUEST['linksrc'];
			$record->linktype 		= $_REQUEST['linktype'];
			$record->content		= $_REQUEST['content'];			
			$record->status			= $_REQUEST['status'];
			
			$record->sortorder		= Offers::find_maximum();
			$record->added_date 	= registered();
			
			$checkDupliName=Offers::checkDupliName($record->title);			
			if($checkDupliName):
				echo json_encode(array("action"=>"warning","message"=>"Articles Title Already Exists."));		
				exit;		
			endif;

			if(empty($_REQUEST['imageArrayname'])):				
				echo json_encode(array("action"=>"warning","message"=>"Required Upload Image !"));
				exit;					
			endif;
			
			$db->begin();
			if($record->save()): $db->commit();
			   $message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Offers '".$record->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));
				log_action("Offers [".$record->title."]".$GLOBALS['basic']['addedSuccess'],1,3);
			else: $db->rollback();
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
			endif;
		break;
			
		case "edit":
			$record = Offers::find_by_id($_REQUEST['idValue']);
			
			if($record->title!=$_REQUEST['title']){
				$checkDupliName=Offers::checkDupliName($_REQUEST['title']);
				if($checkDupliName):
					echo json_encode(array("action"=>"warning","message"=>"Articles title is already exist."));		
					exit;		
				endif;
			}

			$record->slug 			= create_slug($_REQUEST['title']);
			$record->title 			= $_REQUEST['title'];
			$record->linksrc 		= $_REQUEST['linksrc'];
			$record->linktype 		= $_REQUEST['linktype'];
			$record->content		= $_REQUEST['content'];			
			$record->status			= $_REQUEST['status'];
			
			if(!empty($_REQUEST['imageArrayname'])):				
				$record->image		= $_REQUEST['imageArrayname'];				
			endif;	

			$db->begin();
			if($record->save()): $db->commit();
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Offers '".$record->title."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			   log_action("Offers [".$record->title."] Edit Successfully",1,4);
			else: $db->rollback(); echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;
		break;
			
		case "delete":
			$id = $_REQUEST['id'];
			$record = Offers::find_by_id($id);
			log_action("Offerss  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->query("DELETE FROM tbl_offers WHERE id='{$id}'");
			
			reOrder("tbl_offers", "sortorder");			
			
			$message  = sprintf($GLOBALS['basic']['deletedSuccess_'], "Offers '".$record->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));					
			log_action("Offers  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
		break;
		
		// Module Setting Sections  >> <<
		case "toggleStatus":
			$id = $_REQUEST['id'];
			$record = Offers::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$record->save();
			echo "";
		break;
			
		case "bulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = Offers::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "bulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
				$record = Offers::find_by_id($allid[$i]);
				log_action("Offers  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);				
				$res = $db->query("DELETE FROM tbl_offers WHERE id='".$allid[$i]."'");				
				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();
			reOrder("tbl_offers", "sortorder");
			
			if($return==1):
				$message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Offers"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;
			
		case "sort":			
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			$posId   = Offers::field_by_id($id,'type');
			datatableReordering('tbl_offers', $sortIds, "sortorder", "type",$posId,1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "Offers"); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;
	}
?>