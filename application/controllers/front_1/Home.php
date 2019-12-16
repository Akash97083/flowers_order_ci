<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	 function __construct() {
        parent::__construct();
        $this->load->model('front/Home_model');
        $this->load->helper('language');
		$language = $this->session->userdata('language');
		$this->lang->load('general',$language);
      }



////////////////// End Class /////////////////////

}
