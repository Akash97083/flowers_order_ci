<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {

	
	function check_admin($data = array()){

		$this->username   	= $data['username'];
        $this->password 	=  $data['password'];
		$login = false;
		$query = "SELECT id,username,full_name,'user_group' FROM tbl_admin WHERE username = '".$this->username."' and password = '".md5($this->password)."' AND status = 'Active'";
		
		$rs = $this->db->query($query);
		if ($rs->num_rows() >0 )
		{
			$row = $rs->row();
			$login = true;			
		}
		
		if($login == true)	{			
			$this->session->set_userdata('user_id', $row->id);
			$this->session->set_userdata('user_group', $row->user_group);
			$this->session->set_userdata('user_name', $row->username);
			$this->session->set_userdata('user_full_name', $row->full_name);
			return true;
		}
		else
		{
			return false;
		}


	}

function valideOldPassword($data){

		$oldpassword = $data['oldpassword'];
		$id = $this->session->userdata('user_id');
		
		$admin_pwd_sql = "SELECT count(*) as CNT FROM tbl_admin WHERE id ='".$id."' and password ='".md5($oldpassword)."'";
		$recordSet = $this->db->query($admin_pwd_sql);
		$rs = false;		
		if($recordSet->num_rows() > 0)
		{
			$rs = array();
			$isEscapeArr = array();
			$row = $recordSet->row_array();
			if($row['CNT']>0)
			{
			
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		{
			
			return false;
		}

}

function updateAdminPass($id,$data)
	{
		$new_admin_pwd	=	$data['new_admin_pwd'];
		
		$query = "update tbl_admin set password = '".md5($new_admin_pwd)."' where id ='".$id."'";
		$rs = $this->db->query($query);


		if($this->db->affected_rows())
		{
			return true;
		}
		else
		{
			
			return false;
		}
 }

 
////////////////// End Class /////////////////////

}
