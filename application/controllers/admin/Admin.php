<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/Admin_model');
        $this->controller = 'admin';
    }


	public function index()
	{
		 //checkAdmin($this->controller."/");
		$data=array('errmsg'=>'');
		$this->load->view('admin/login',$data);
	}


function do_login(){
		$data = array();

	    $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');


			$data['username'] = $this->input->post("username");
            $data['password'] = $this->input->post("password");
            //$check_login = array();
            //print_r($data);exit;
            $check_login = $this->Admin_model->check_admin($data);
            //print_r($check_login); exit;
            if($check_login!='') {
            	redirect(base_url("admin/dashboard/"));
            	

             } else {
             	$this->session->set_flashdata('errmsg', "Invalid username and/or password.");
               redirect(base_url($this->controller."/"));
				

                }
	
		}


////////////////// End Class /////////////////////

}
