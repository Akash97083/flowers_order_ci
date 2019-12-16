<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/User_model');
        $this->controller = 'user';



    }


	public function index()
	{
		checkAdmin($this->controller."/");
		$data=array('errmsg'=>'');
        $data['page_title']="Mamage User";
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Global Settings</li>';
        $data['recordset'] = $this->User_model->getAllUser();
		$this->load->view('admin/user/index',$data);
	}

 function add_user($id= null){
    if($id !=''){
        $data['page_title']='Update User';
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Update User</li>';

    }else{
        $data['page_title']='Add New User';
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Add New User</li>';

    }
    
    $data['succmsg'] = '';
    $data['errmsg'] = '';
    
    $data['users_detail'] = $this->User_model->getUserDetail($id)[0];
    $this->load->view('admin/user/add_user',$data);
 }

 function update_user(){

    $user_name = $this->input->post('user_name');

    if(isset($user_name)){

        $data = array(
            'id'=>$this->input->post('user_id'),
            'user_group'=>'1',
            'user_name'=>$user_name,
            //'password'=>md5($this->input->post('password')),
            'email_id'=>$this->input->post('email'),
            'phoneno'=>$this->input->post('mobile'),
            'address'=>$this->input->post('address1'),
            //'pin'=>$this->input->post('pin'),
            //'city'=>$this->input->post('city'),
            //'country'=>$this->input->post('country'),
            //'image'=>'',
            'added_date'=>date('Y-m-d H:i:s')

        );

        //print_r($data);
        $this->User_model->addUser($data);

        if(!empty($data['id'])){
        $this->session->set_userdata('succmsg', "Category Updated Successfully");
        }else{
         $this->session->set_userdata('succmsg', "Category Add Successfully");
        }
        redirect('admin/user');




    }else{
        redirect('admin/user','refresh');
    }


 }

  function changestatus()
   {
    $id = $this->input->post('id');
    $userstatus = $this->User_model->getUserDetail($id)[0];
    if($userstatus['status']=='Active')
    {
      $user_data = array('id'=>$id,'status'=>'Inactive');
      $this->User_model->addUser($user_data);
      echo 'Inactive';
    }
    if($userstatus['status']=='Inactive')
    {
    
      $user_data = array('id'=>$id,'status'=>'Active');
      $this->User_model->addUser($user_data);
      echo 'Active';
    }
  
  } 
function user_delete()
   {
    $id = $this->input->post('id');
    $this->User_model->user_delete($id);   
   }
 function sms(){
    $data['page_title'] = 'Send Message';
    $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Send Message</li>';    
    $this->load->view('admin/sms/send_sms',$data);
 }

 function msgsend(){
    $result = $this->input->post('result');
    $json_encode = json_decode($result);
    /////////// SMS GET WAY///////
  $username = $json_encode->username; 
  $hash = $json_encode->hash;
  $test = $json_encode->test;
  $sender = $json_encode->sender; 
  $numbers = $json_encode->numbers;
  $tags = array("<p>", "</p>", "<font>", "</font>");
  $message1 = str_replace($tags, "", $json_encode->sms_message);
  $message = urlencode($message1);
  //$message = urlencode(htmlentities($message1));
  $data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test;
  $ch = curl_init('http://api.textlocal.in/send/?');
  curl_setopt($ch, CURLOPT_POST, true);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $sms_result = curl_exec($ch);
  print_r($sms_result);
  curl_close($ch);

  /*$data_array = array (
  'balance' => 7,
  'batch_id' => 526640995,
  'cost' => 2,
  'num_messages' => 2,
  'message' => 
  array (
    'num_parts' => 1,
    'sender' => 'TXTLCL',
    'content' => 'Namaskar Dosto Dipawali ke subh awasar pe Jhankar Telecom ki taraf se mobile accessories or smart phone pe behtrin discount. for more detail - 6294233156',
  ),
  'receipt_url' => '',
  'custom' => '',
  'messages' => 
  array (
    0 => 
    array (
      'id' => '1604687487',
      'recipient' => 916294233156,
    ),
    1 => 
    array (
      'id' => '1604687488',
      'recipient' => 918777087259,
    ),
  ),
  'status' => 'success',
);

  $sms_result = json_encode($data_array);*/
    $sms_responce = json_decode($sms_result);
    
    $tblsmsdata1['total_count'] = $sms_responce->num_messages;
    $tblsmsdata1['sms_description'] = $message1;
    $tblsmsdata1['sent_count'] = $sms_responce->num_messages;
    $tblsmsdata1['total_phone_number'] = $numbers;
    $tblsmsdata1['available_credits'] = $sms_responce->balance;
    $tblsmsdata1['message_id'] = '';
    $tblsmsdata1['status'] = $sms_responce->status;
    $tblsmsdata1['when_send'] = date('Y-m-d H:i:s');
    $last_id = $this->User_model->addSms($tblsmsdata1);
      foreach($sms_responce->messages as $row){
      
        $tbl_sms_data_detail2['sms_data_id'] = $last_id;
        $tbl_sms_data_detail2['message_id'] = $row->id;
        $tbl_sms_data_detail2['recipient'] = $row->recipient;
        $tbl_sms_data_detail2['when_sent'] = date('Y-m-d H:i:s');
        $this->User_model->addSmsDetail($tbl_sms_data_detail2);
     }


 }

////////////////// End Class /////////////////////

}
