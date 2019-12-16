<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/Report_model');
        $this->controller = 'cms';



    }


	public function index()
	{
		checkAdmin($this->controller."/");
		$data=array('errmsg'=>'');
        $data['page_title']="SMS Report";
        
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Sms Report</li>';
        $data['to_date'] = date('Y-m-d');
        $data['from_date'] = date('Y-m-d');
        $data['recordset'] = $this->Report_model->AllSms();
        $this->load->view('admin/report/index',$data);
	}
  
  public function sms_data()
    {
        checkAdmin($this->controller."/");
        $data=array('errmsg'=>'');
        $data['page_title']="SMS Report";
        
        $data['breadcrumb'] = '<li><i class="ace-icon fa fa-home home-icon"></i><a href="'.base_url().'">Home</a></li><li class="active">Sms Report</li>';
        $data['to_date'] = $this->input->post('to_date');
        $data['from_date'] = $this->input->post('from_date');
        $data['recordset'] = $this->Report_model->getAllSmsFilter($data);
        $this->load->view('admin/report/index',$data);
    }
 
 function getSmsDetails(){
  $id = $this->input->post('id');
  $getSmsDetail = $this->Report_model->getSmsDetail($id);
  $getAllUserWhoRecivedSms = $this->Report_model->getAllUserWhoRecivedSms($id);
  $html = '<ul class="custom-listing">
      <li><label>Available Credits:</label> '.$getSmsDetail[0]['available_credits'].'</li>
      <li><label>Status:</label> '.$getSmsDetail[0]['status'].'</li>
      <li><label>Message:</label><br>'.$getSmsDetail[0]['sms_description'].'</li>';
      
      $html .= '
      <div class="table-responsive"><table class="table table-bordered table-striped no-footer">
                  <thead>
                      <tr>
                        <th>Sl No.</th>
                        <th>User Name</th>
                        <th>Phone Number</th>
                        <th>message_id</th>
                        
                        
                      </tr>
                    </thead>
                    <tbody>';
                    $i = 1;
          foreach($getAllUserWhoRecivedSms as $product){
              //$user_number = ;
              $userName = perticularFlied("tbl_user","user_name",array("phoneno"=>str_replace("91","",$product['recipient'])));
              

              $html .= '<tr>
                            <td>'.$i.'</td>
                            <td>'.$userName[0]['user_name'].'</td>
                            <td>'.$product['recipient'].'</td>
                            <td>'.$product['message_id'].'</td>
                            
                        </tr>';
            $i++;
                    }

          $html .= '</tbody>
                    
                </table></div>';
            
      
      $html .= '</ul>'; 
      
    echo $html; 

 }

////////////////// End Class /////////////////////

}
