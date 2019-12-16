<?php

class Global_settings extends CI_Controller {



	function __construct()

	{

		parent::__construct();
		checkAdmin('');
		$this->load->model('admin/Global_settings_model');

		$this->controller = 'global_settings';

	}

	function index()
	{	
		checkAdmin($this->controller."/");

		$data['page_title']			= 'Global Settings';

		$data['base_url'] 		= base_url("admin/".$this->controller."/index/");

		$data['global'] 			= $this->Global_settings_model->getGlobalData();

		$data['breadcrumb']			= '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Global Settings</li>';

		$data['back_link'] = base_url("admin/".$this->controller."/index/");

		$data['succmsg']= '';
 	    $data['errmsg']= '';
	   $this->load->view('admin/global_settings/index',$data);

		
	}

	

	function do_global_setting()

	{

		checkAdmin($this->controller."/");

		/*----------------------------------- Site Information  ----------------------------------------*/

		$data['global_site_name_en']			= $this->input->post("global_site_name_en");

    	$data['global_meta_title_en']			= $this->input->post("global_meta_title_en");
		
    	$data['global_meta_keywords_en']		= $this->input->post("global_meta_keywords_en");
		
    	$data['global_meta_description_en']	= $this->input->post("global_meta_description_en");
		
		$data['global_phone_number']	= $this->input->post("global_phone_number");
		
		$data['global_site_email_address']	= $this->input->post("global_site_email_address");
		
		$data['global_site_address']	= $this->input->post("global_site_address");
		
		/*----------------------------------- Email Information  ---------------------------------------*/

		$data['global_web_admin_name']		= $this->input->post("global_web_admin_name");

    	$data['global_webadmin_email']		= $this->input->post("global_webadmin_email");
		
		$data['global_email_signature']		= $this->input->post("global_email_signature");

		$data['global_web_with_in']		= $this->input->post("global_web_with_in");

		$data['global_web_longitude'] = $this->input->post("global_web_longitude");

		$data['global_web_latitude'] = $this->input->post("global_web_latitude");
		
		$data['global_web_with_in_pin'] = $this->input->post("global_web_with_in_pin");




		//updateLog('Global Settings','Global Settings Changed');

		$this->Global_settings_model->updateGlobalSetting($data);

		$this->session->set_flashdata('succmsg', "Configuration Updated Successfully");

		redirect(base_url("admin/".$this->controller."/"));

		return true;

	}


}



?>