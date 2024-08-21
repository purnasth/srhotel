<?php
class Package extends DatabaseObject {

	protected static $table_name = "tbl_package";
	protected static $db_fields = array('id', 'slug', 'image', 'header_image', 'banner_image', 'title', 'sub_title', 'status', 'sortorder', 'detail', 'content', 'meta_title', 'meta_keywords', 'meta_description', 'type', 'added_date');
	
	var $id;
	var $slug;
	var $image;
	var $header_image;
	var $banner_image;
	var $title;
	var $sub_title;
	var $status;
	var $sortorder;
	var $detail;
	var $content;
	var $meta_title;
	var $meta_keywords;
	var $meta_description;
	var $type;
	var $added_date;

	public static function get_accommodationId()
	{
		global $db;
		$sql="SELECT id FROM ".self::$table_name." WHERE status='1' AND type='1' ORDER BY sortorder DESC LIMIT 1 ";
		$result = $db->query($sql);
		$return = $db->fetch_array($result);
		return ($return) ? $return['id'] : '0';
	}

	//Find a single row in the database where slug is provided.
	public static function find_by_slug($slug=0){
		global $db;
		$sql = "SELECT * FROM ".self::$table_name." WHERE slug='$slug' LIMIT 1";
		$result_array = self::find_by_sql($sql);
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
	// view package Front.
	static function getPackage($limit=''){
		global $db;
		$cond = !empty($limit)?' LIMIT '.$limit :'';
		$sql = "SELECT * FROM ".self::$table_name." WHERE status=1 ORDER BY sortorder DESC $cond";
		return self::find_by_sql($sql);
	}

	// view non-package room 
	static function getPackagefront($limit=''){
		global $db;
		$cond = !empty($limit)?' LIMIT '.$limit :'';
		$sql = "SELECT * FROM ".self::$table_name." WHERE status=1 AND type=0 ORDER BY sortorder DESC $cond";
		return self::find_by_sql($sql);
	}
	
	static function get_latest_pkg($limit=''){
		global $db;
		$cond = !empty($limit)?' LIMIT '.$limit :'';
		$sql = "SELECT * FROM ".self::$table_name." WHERE status=1 AND type='1' ORDER BY sortorder DESC $cond";
		return self::find_by_sql($sql);
	}

		static function get_pkg_by_id($id='',$limit='1'){
		global $db;
		$cond = !empty($limit)?' LIMIT '.$limit :'';
		$sql = "SELECT * FROM ".self::$table_name." WHERE status=1 AND id={$id}  ORDER BY sortorder DESC $cond";
		return self::find_by_sql($sql);
	}
		
	public static function checkDupliTitle($title='')
	{
		global $db;
		$query = $db->query("SELECT title FROM ".self::$table_name." WHERE title='$title' LIMIT 1");
		$result= $db->num_rows($query);
		if($result>0) {return true;}
	}
	
	static function getTotalImages($id=0){
		global $db;
		$sql = "SELECT id FROM ".self::$table_name." WHERE status=1";
		return @$db->num_rows($db->query($sql));
	}

	/************************** Package link  by me ***************************/
	public static function get_internal_link($Lsel='',$LType=0)
	{
		global $db;		
		$sql = "SELECT id, slug, title, type FROM ".self::$table_name." WHERE status='1' ORDER BY sortorder ASC";
		$pages = self::find_by_sql($sql);		
		$linkpageDis = ($Lsel==1)?'hide':'';
		
		$result='';		
		if($pages):
		$result.='<optgroup label="Package">';
			foreach($pages as $pageRow):
				$chkChild  = Subpackage::getTotalSub($pageRow->type);
				$pakgLink  = !empty($chkChild)?'package':'package';

				$sel = ($Lsel==($pakgLink.'/'.$pageRow->slug)) ?'selected':'';
				$result.='<option value="'.$pakgLink.'/'.$pageRow->slug.'" '.$sel.'>&nbsp;&nbsp;'.$pageRow->title.'</option>';

				// Sub package list
				$subRec = Subpackage::getPackage_limit($pageRow->id);
				if($subRec){
					foreach($subRec as $Nrow){
						$sel = ($Lsel==("subpackage/".$Nrow->slug)) ?'selected':'';
						$result.='<option value="subpackage/'.$Nrow->slug.'" '.$sel.'>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;'.$Nrow->title.'</option>';
					}
				}

			endforeach;
		$result.='</optgroup>';	
		endif;
		return $result;
	}
	
	// view package of the nos provided.
	static function getPackageList($total=5, $offset=0){
		global $db;
		return self::find_by_sql("SELECT * FROM ".self::$table_name." WHERE status=1 ORDER BY sortorder ASC LIMIT {$total} OFFSET {$offset}");
	}
	
	//FIND THE HIGHEST MAX NUMBER.
	static function find_maximum($field="sortorder"){
		global $db;
		$result = $db->query("SELECT MAX({$field}) AS maximum FROM ".self::$table_name);
		$return = $db->fetch_array($result);
		return ($return) ? ($return['maximum']+1) : 1 ;
	}
	
	// get the package name from it's id
	static function getPackageName($id=0){
		global $db;
		$result = $db->query("SELECT title FROM ".self::$table_name." WHERE id='{$id}'");
		$return = $db->fetch_array($result);
		return ($return) ? $return['title'] : '' ;
	}
	
	//Find all the rows in the current database table.
	static function find_all(){
		global $db;
		return self::find_by_sql("SELECT * FROM ".self::$table_name." ORDER BY sortorder DESC");
	}

	//Find all the rows in the current database table.
	static function get_all(){
		global $db;
		$sql="SELECT id,title FROM ".self::$table_name." WHERE status=1 ORDER BY sortorder ASC";
		return self::find_by_sql($sql);
	}

	public static function getTotalparent(){
		global $db;		
		$query = "SELECT COUNT(id) AS tot FROM ".self::$table_name." WHERE status=1 ";
		$sql = $db->query($query);
		$ret = $db->fetch_array($sql);
		return $ret['tot'];
	}

	//Find a single row in the database where id is provided.
	static function find_by_id($id=0){
		global $db;
		$result_array = self::find_by_sql("SELECT * FROM ".self::$table_name." WHERE id={$id} LIMIT 1");
		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public static function field_by_id($id=0,$fields=""){
		global $db;
		$sql = "SELECT $fields FROM ".self::$table_name." WHERE id={$id} LIMIT 1";
		$result = $db->query($sql);
		$return = $db->fetch_array($result);
		return ($return) ? $return[$fields] : '' ;
	}

	public static function type_by_id($type=1){
		global $db;
		$sql = "SELECT id FROM ".self::$table_name." WHERE type={$type} LIMIT 1";
		$result = $db->query($sql);
		$return = $db->fetch_array($result);
		return ($return)? $return['id'] : 0;
	}
	
	//Find rows from the database provided the SQL statement.
	static function find_by_sql($sql=""){
		global $db;
		$result_set = $db->query($sql);
		$object_array = array();
		while($row = $db->fetch_array($result_set)){
			$object_array[] = self::instantiate($row);
		}
		return $object_array;
	}
	
	//Instantiate all the attributes of the Class.
	static function instantiate($record){
		$object  = new self;
		foreach($record as $attribute=>$value){
			if($object->has_attribute($attribute)){
				$object->$attribute = $value;
			}
		}
		return $object;
	}
	
	//Check if the attribute exists in the class.
	function has_attribute($attribute){
		$object_vars = $this->attributes();
		return array_key_exists($attribute, $object_vars);
	}
	
	//Return an array of attribute keys and thier values.
	protected function attributes(){
		$attributes = array();
		foreach(self::$db_fields as $field):
			if(property_exists($this, $field)){
				$attributes[$field] = $this->$field;
			}
		endforeach;
		return $attributes;
	}
	
	//Prepare attributes for database.
	protected function sanitized_attributes(){
		global $db;
		$clean_attributes = array();
		foreach($this->attributes() as $key=>$value):
			$clean_attributes[$key] = $db->escape_value($value);
		endforeach;
		return $clean_attributes;
	}
	
	//Save the changes.
	function save(){
		return isset($this->id) ? $this->update() : $this->create();
	}
	
	//Add  New Row to the database
	function create(){
		global $db;
		$attributes = $this->sanitized_attributes();
		$sql = "INSERT INTO ".self::$table_name."(";
		$sql.= join(", ", array_keys($attributes));
		$sql.= ") VALUES ('";
		$sql.= join("', '", array_values($attributes));
		$sql.= "')";
		if($db->query($sql)){
			$this->id = $db->insert_id();
			return true;
		} else {
			return false;
		}
	}
	
	//Update a row in the database.
	function update(){
		global $db;
		$attributes = $this->sanitized_attributes();
		$attribute_pairs = array();
		
		foreach($attributes as $key=>$value):
			$attribute_pairs[] = "{$key}='{$value}'";
		endforeach;
		
		$sql = "UPDATE ".self::$table_name." SET ";
		$sql.= join(", ", array_values($attribute_pairs));
		$sql.= " WHERE id=".$db->escape_value($this->id);
		$db->query($sql);
		return ($db->affected_rows()==1) ? true : false;
		//return true;
	}
}
?>