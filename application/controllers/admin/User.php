<?php defined('BASEPATH') OR exit('No direct script access allowed');

 class User extends CI_Controller
 {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model('admin/User_model');
        $this->controller = 'user';
 	}

 	public function index(){
		checkAdmin($this->controller."/");
		$data=array('errmsg'=>'');
		$data = array('succmsg'=>'');
		$data['page_title']="Manage User";

		$data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Manage User</li>';
		$data['recordset'] = $this->User_model->getAllUser();
		$this->load->view('admin/user/index',$data);
 	}

function add_user($id= null){
	if($id !=''){
		$data['page_title']='User Detail';
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url('admin/dashboard').'">Home</a></li><li><a href="'.base_url('admin/user').'">User List</a></li><li class="active">User Detail</li>';

	}else{
		$data['page_title']='Add User';
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url('admin/dashboard').'">Home</a></li><li><a href="'.base_url('admin/User').'">User List</a></li><li class="active">Add User</li>';

	}
    
    $data['succmsg'] = '';
    $data['errmsg'] = '';
    $data['UserDetail'] = $this->User_model->getUserDetail($id)[0];
    $this->load->view('admin/user/add_user',$data);
 }

 function User_data(){
    $User_name = $this->input->post('User_name');
    $contentId =$this->input->post('User_id');
   if($User_name !=''){
   	$checkExistsUser = $this->User_model->checkExistsUser(array('User_name'=>$User_name),$this->input->post('User_id'));
   	if($checkExistsUser > 0){
	$this->session->set_flashdata('errmsg', 'User Already Exists.');
	redirect(base_url("admin/User/add_User/".$contentId));
	return true;
	}else{

      $data = array(
            'id'=>$this->input->post('User_id'),
            'User_name'=>$this->input->post('User_name'),
            'description'=>$this->input->post('description'),
            'status'=>'active',
            'user_id'=>$this->session->userdata('user_id'),
            'when_added'=>date('Y-m-d H:i:s')

        );

        //print_r($data); exit();
        $last_id = $this->User_model->addUser($data);

      }

        if(!empty($data['id'])){
        	$slug_data = array('id'=>$last_id,'User_slug'=>strtolower(str_replace(" ", "-", $this->input->post('User_name').'-indonesia')));

         $this->User_model->addUser($slug_data);

            $this->session->set_flashdata('succmsg', "".ucfirst($User_name)." Updated Successfully");
        }else{
        	$slug_data = array('id'=>$last_id,'User_slug'=>strtolower(str_replace(" ", "-", $this->input->post('User_name').'-indonesia')));

         $this->User_model->addUser($slug_data);


            $this->session->set_flashdata('succmsg', "".$User_name." Add Successfully");
        }
        
        redirect('admin/User');




    }else{
        redirect('admin/cms','refresh');
    }


 }

 function User_check(){
 	$cat_id = $this->input->post('cat_id');
 	$User_name = $this->input->post('User_name');
	$count = $this->User_model->check_User($cat_id,$User_name);
 	echo $count;
 }

function changestatus()
	 {
		$id = $this->input->post('id');
		$userstatus = $this->User_model->getUserDetail($id);
		if($userstatus[0]['status']=='Active')
		{
			$user_data = array('id'=>$id,'status'=>'Inactive');
			$this->User_model->addUser($user_data);
			echo 'Inactive';
		}
		if($userstatus[0]['status']=='Inactive')
		{
		
			$user_data = array('id'=>$id,'status'=>'Active');
			$this->User_model->addUser($user_data);
			echo 'Active';
		}
	
	}

 }