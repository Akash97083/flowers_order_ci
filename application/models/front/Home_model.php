<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model {


 function OccasionTypeResult($id){
 	$this->db->select('*');
 	$this->db->like('occasion_type',$id['id']);
 	$res = $this->db->get('tbl_item')->result_array();
 	return $res;

 }

function add_on_item($data = array()){
	$this->db->insert('tbl_temp_add_on_item',$data);
 	$last_id = $this->db->insert_id();

 	

 	return $last_id;


}

function update_add_on_item($data = array(),$st){
		/*$status = perticularFlied('tbl_temp_add_on_item','status',array('user_id'=>$data['user_id'],'item_id'=>$data['item_id']));*/
		if($st=='Active'){
			$st1 = 'Inactive';

		}
		if($st=='Inactive'){
			$st1 = 'Active';

		}
		//echo $st;
		//exit;

		$this->db->where('user_id',$data['user_id']);
 		$this->db->where('item_id',$data['item_id']);
 		$this->db->where('add_on_id',$data['add_on_id']);
 		//$update_st = array('status'=>$st1);
 		$this->db->update('tbl_temp_add_on_item',$data);
 		//echo $this->db->last_query();
 		return $last_id =$data['status'];

}

function add_on_item_detail($user_id,$item_id,$add_on_id,$count){
	//echo $user_id.'<br>';
	//echo $item_id.'<br>';
	//echo $add_on_id.'<br>';
	//echo $count;
	//exit;

	$this->db->select('*');
	$this->db->where('user_id',$user_id);
	$this->db->where('item_id',$item_id);
	$this->db->where('add_on_id',$add_on_id);
	$this->db->where('count',$count);
	//$this->db->where('status','Active');

	$res = $this->db->get('tbl_temp_add_on_item')->result_array();
	return $res;

}

 function GetAllAddOn($user_id){
 	$this->db->select('*');
 	$this->db->where('user_id',$user_id);
 	$this->db->where('status','Active');
 	$res = $this->db->get('tbl_temp_add_on_item')->result_array();
 	return $res;

 }

 function RemoveAddOnItem($id,$user_id,$item_id,$add_on_id){
 	$this->db->where('user_id',$user_id);
 	$this->db->where('item_id',$item_id);
 	$this->db->where('add_on_id',$add_on_id);
 	$this->db->where('id',$id);
 	$this->db->delete('tbl_temp_add_on_item');
  	return true;


 }

 function check_user($data = array()){
 	$this->email   	= $data['email'];
    $this->password 	=  $data['password'];

 	$login = false;
		$query = "SELECT * FROM tbl_user WHERE email_id = '".$this->email."' and password = '".md5($this->password)."' AND status = 'Active'";
		
		$rs = $this->db->query($query);
		if ($rs->num_rows() >0 )
		{
			$row = $rs->row();
			$login = true;			
		}

		echo $query.'<br>';

		print_r($row);
		exit;


		if($login == true)	{			
			$this->session->set_userdata('user_id', $row->id);
			$this->session->set_userdata('email_id', $row->email_id);
			$this->session->set_userdata('full_name', $row->full_name);
			return true;
		}
		else
		{
			return false;
		}


 }


  function user_login($data = array()){
 	$this->email   	= $data['email'];
    $this->password 	=  $data['password'];

 	$login = false;
		$query = "SELECT * FROM tbl_user WHERE email_id = '".$this->email."' and password = '".$this->password."' AND status = 'Active'";
		
		$rs = $this->db->query($query);
		if ($rs->num_rows() >0 )
		{
			$row = $rs->row();
			$login = true;			
		}

		/*echo $query.'<br>';

		print_r($row);
		exit;*/


		if($login == true)	{			
			$this->session->set_userdata('user_id', $row->id);
			$this->session->set_userdata('email_id', $row->email_id);
			$this->session->set_userdata('full_name', $row->full_name);
			return true;
		}
		else
		{
			return false;
		}


 }


 function add_user($data = array()){
 	$this->db->insert('tbl_user',$data);
 	$last_id = $this->db->insert_id();
 	return $last_id;

 }

 function AddOnItemDelete($user_id){
 	$this->db->where('user_id',$user_id);
 	$this->db->delete('tbl_temp_add_on_item');
  	return true;

 }

 function UpdateUserPassword($email,$newpassword){
 	$new_password = array('password'=>md5($newpassword));
 	$this->db->where('email_id',$email);
 	$this->db->update('tbl_user',$new_password);
 	return true;


 }

function ItemSearchByPrice($start,$end){
	$sql="SELECT * FROM `tbl_item` WHERE `item_price` BETWEEN ".$start." AND ".$end." ";
	$query = $this->db->query($sql);
	//echo $this->db->last_query();
	$row = $query->result_array();
	return $row;


}

function item_short_by($short,$sub_cat){
	//echo $short;
	//exit;
	if($short=='ASC'){

		$sql="SELECT * FROM `tbl_item` WHERE `category_id` = " .$sub_cat. " AND `status` ='Active' AND `is_delete` ='1' ORDER BY `id` ".$short;

	}

	if($short=='DESC'){
		$sql="SELECT * FROM `tbl_item` WHERE `category_id` = " .$sub_cat. " AND `status` ='Active' AND `is_delete` ='1' ORDER BY `add_timestamp` ".$short;
		
	}
	if($short=='PRICE_ASC'){
		$sql="SELECT * FROM `tbl_item` WHERE `category_id` = " .$sub_cat. " AND `status` ='Active' AND `is_delete` ='1' ORDER BY `item_price` ASC";
		
	}
	if($short=='PRICE_DESC'){
		$sql="SELECT * FROM `tbl_item` WHERE `category_id` = " .$sub_cat. " AND `status` ='Active' AND `is_delete` ='1' ORDER BY `item_price` DESC";
		
	}
	//echo $sql; exit;

	$query = $this->db->query($sql);
	//echo $this->db->last_query();
	$row = $query->result_array();
	return $row;

}

function by_price_short_by($short){
	if($short=='ASC'){

		$sql="SELECT * FROM `tbl_item` WHERE `status` ='Active' AND `is_delete` ='1' ORDER BY `id` ".$short;

	}

	if($short=='DESC'){
		$sql="SELECT * FROM `tbl_item` WHERE `status` ='Active' AND `is_delete` ='1' ORDER BY `add_timestamp` ".$short;
		
	}
	if($short=='PRICE_ASC'){
		$sql="SELECT * FROM `tbl_item` WHERE `status` ='Active' AND `is_delete` ='1' ORDER BY `item_price` ASC";
		
	}
	if($short=='PRICE_DESC'){
		$sql="SELECT * FROM `tbl_item` WHERE `status` ='Active' AND `is_delete` ='1' ORDER BY `item_price` DESC";
		
	}
	//echo $sql; exit;

	$query = $this->db->query($sql);
	//echo $this->db->last_query();
	$row = $query->result_array();
	return $row;

}

////////////////// End Class /////////////////////

}
