<?php defined('BASEPATH') OR exit('No direct script access allowed');

 class User_model extends CI_Model
 {
 	

 	function getAllUser(){
  		$this->db->select('*');
  		$this->db->order_by('id','DESC');
  		$res = $this->db->get('tbl_user')->result_array();
  		return $res;
  	}

 function getUserDetail($id){
 	$this->db->select('*');
 	$this->db->where('id',$id);
 	$res = $this->db->get('tbl_user')->result_array();
 	return $res;


 }

 function addUser($data){
 	if($data['id']!=''){
 		$this->db->where('id',$data['id']);
 		$this->db->update('tbl_user',$data);
 		$last_id = $data['id'];

 	}else{

 		$this->db->insert('tbl_user',$data);
 		$last_id = $this->db->insert_id();

 	}

 	return $last_id;


 }

 function check_User($id,$cat_name){
	$this->db->select('User_name');
	$this->db->where('User_name',$cat_name);
	if(!empty($id)){
    $this->db->where('id !=',$id);
    }

 	$res = $this->db->get('tbl_user')->num_rows();

 	return $res;


 }

function checkExistsUser($data,$editID=''){
	if($editID != ''){
      $this->db->where('id != ',$editID); 
    }
    
    $num_rows = $this->db->get_where('tbl_user',array('User_name' => $data['User_name']))->num_rows();
    //echo $this->db->last_query(); exit;
    return $num_rows;

}
 	
////////////// End Class ///////////////
 	
 }