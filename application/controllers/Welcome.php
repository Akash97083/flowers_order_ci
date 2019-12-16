<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include_once('class/utcpro.class.php');
include_once('class/utcpro.settings.php');

class Welcome extends CI_Controller {

	function __construct() {
        parent::__construct();
        $this->load->model('front/Home_model');
        $d   = filter_input(INPUT_GET, 'd', FILTER_SANITIZE_STRING);
        $w   = (int) filter_input(INPUT_GET, 'w', FILTER_SANITIZE_NUMBER_INT);
        $h   = (int) filter_input(INPUT_GET, 'h', FILTER_SANITIZE_NUMBER_INT);
        $this->controller = 'welcome';
        $this->load->library('cart');
        $this->load->helper('captcha');
      }

public function mail_fuction($to,$sub,$html)
    {
          $this->load->library('email');
          $config['protocol']='smtp';
          $config['smtp_host']=gethostbyname("i75rv.com");
          $config['smtp_port']='587';
          $config['smtp_user']='no-reply@i75rv.com';
          $config['smtp_pass']='[3MDN+zNel8q';
          $config['charset']='utf-8';
          $config['SMTPSecure']='tls';
          $config['newline']="\r\n";
          $config['wordwrap'] = TRUE;
          $config['mailtype'] = 'html';
          $this->email->initialize($config);
          $this->email->set_newline("\r\n");
          //$this->email->from('no-reply@saesha-flower.com',"Saesha Flower");
          $this->email->from('vishal143.niit@gmail.com',"Saesha Flower");
          $this->email->to($to);// change it to yours
          $this->email->cc('rohitmajumder1983@gmail.com');
          if($sub!="New Message Received"){
              $this->email->cc('');
              $this->email->bcc('');
          }
          //$this->email->bcc();
          $this->email->subject($sub);
          $this->email->message($html);
          if($this->email->send()){
            return 1;
          }else{
            return "0000";
          }    
    }

	public function index()
	{
		$data=array('errmsg'=>'');
		$this->load->view('front/index',$data);
	}

  public function listing(){
  	$this->load->view('front/listing',$data);
  }

  

     public function category()
     {
      $sub_cat_slug = $this->input->get('sl');
      $data = array();
      $data['page_title'] ='Cackes';
      $this->load->view('front/listing',$data);
     }

   public function flowers(){
      $sub_cat_slug = $this->input->get('sl');
      $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFliedOrderby('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id'],'is_delete'=>'1'),array('order_by'=>'sequence_order','offset'=>'ASC'));
      //echo "<pre>";print_r($data['item_list']);
      //exit;
      $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
      $data['page_title'] ='Flowers';
      $this->load->view('front/listing',$data);
  }

  public function flowers_type(){
     $sub_cat_slug = $this->input->get('sl');
     $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFliedOrderby('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id'],'is_delete'=>'1'),array('order_by'=>'sequence_order','offset'=>'ASC'));
      $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
      $data['page_title'] ='Flower Type';
      $this->load->view('front/listing',$data);
    }

  public function flower_combos(){
      $sub_cat_slug = $this->input->get('sl');
      $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFliedOrderby('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id'],'is_delete'=>'1'),array('order_by'=>'sequence_order','offset'=>'ASC'));
      $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
      $data['page_title'] ='Flower Combos';
      $this->load->view('front/listing',$data);
    }

  public function plants(){
    $sub_cat_slug = $this->input->get('sl');
    $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFliedOrderby('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id'],'is_delete'=>'1'),array('order_by'=>'sequence_order','offset'=>'ASC'));
      $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
      $data['page_title'] ='Plants';
    $this->load->view('front/listing',$data);
  }

 /* public function occasion()
  {
    $sub_cat_slug = $this->input->get('sl');
    $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFlied('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id']));
    $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
    $this->load->view('front/listing',$data);
  }*/
 public function occasion()
  {
    $sub_cat_slug = $this->input->get('sl');
    $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
    $data['item_list'] = $this->Home_model->OccasionTypeResult($sub_cat_id);
    //echo "<pre>";print_r($data['occasion_type']);
    $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
    $data['page_title'] ='Occasion';
    $this->load->view('front/listing',$data);
  }

  public function gift()
  {
    $sub_cat_slug = $this->input->get('sl');
    $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFliedOrderby('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id'],'is_delete'=>'1'),array('order_by'=>'sequence_order','offset'=>'ASC'));
    $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
    $data['page_title'] ='Gift';
    $this->load->view('front/listing',$data);
  }

   public function cackes()
  {
    $sub_cat_slug = $this->input->get('sl');
    $sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$sub_cat_slug,'status'=>'active'))[0];
      $data['item_list'] = perticularFliedOrderby('tbl_item','*',array('status'=>'active','sub_cat_id'=>$sub_cat_id['id'],'is_delete'=>'1'),array('order_by'=>'sequence_order','offset'=>'ASC'));
    $data['sub_cat_name']= $sub_cat_id['sub_cat_name'];
    $data['page_title'] ='Cackes';
    $this->load->view('front/listing',$data);
  }


  public function item_detail(){
    $session_item =$this->session->userdata('add_val');
    ######## tbl_temp_add_on_item Delete #######

    if($this->session->userdata('user_id')!=''){
     $user_id = $this->session->userdata('user_id');
    }else{
    $user_id = $_SERVER['REMOTE_ADDR'];
    }

    $this->Home_model->AddOnItemDelete($user_id);
    ######## End tbl_temp_add_on_item Delete #######

    $item_slug = $this->input->get('sl');
    $data['item_deiail'] = perticularFlied('tbl_item','*',array('item_slug'=>$item_slug,'status'=>'active','is_delete'=>'1'))[0];
    $data['add_on'] = perticularFlied('tbl_addon','*',array('status'=>'Active'));
    $this->load->view('front/item_detail',$data);

  }

  public function cart(){
    $item_slug = $this->input->get('sl');
    $data['item_deiail'] = perticularFlied('tbl_item','*',array('item_slug'=>$item_slug,'status'=>'active','is_delete'=>'1'))[0];
    $data['cart'] = $this->cart->contents();

    $this->load->view('front/cart',$data);

  }
  
   public function order_detail(){
    checkUser("/");
    $item_slug = $this->input->get('sl');
    $data['item_deiail'] = perticularFlied('tbl_item','*',array('item_slug'=>$item_slug,'status'=>'active','is_delete'=>'1'))[0];
    $this->load->view('front/order_detail',$data);

  }

public function select_delivery_date(){
  $city_id = $this->input->post('city_id');
  $delivery_time = perticularFlied('tbl_delivery_charges','*',array('city_id'=>$city_id,'delivery_status'=>'Active'));
    echo '<option value="">Choose Time</option>';
    foreach($delivery_time as $dt){
      echo '<option value="'.$dt['id'].'" >'.$dt['from_time'].' - '.$dt['to_time'].'</option>';

    }
} 

public function add_val(){
  $add_data = array(  
    'single_or_double' => $this->input->post('the_quantity'),
    'the_quantity_description'=> $this->input->post('the_quantity_description'),
    'item_price' => $this->input->post('the_quantity_price'),  
    'glass_add' => $this->input->post('glass_add'), 
    'city_id' =>  $this->input->post('city'),
    'deliverydate'=> $this->input->post('deliverydate'),
    'deliverytime_id'=>$this->input->post('deliverytime_id'),#Delivery_charge_id
    'item_name'=>$this->input->post('item_name'),
    'item_id'=>$this->input->post('item_id'),
);  
  
  //echo "<pre>";print_r($add_data);
  $this->session->set_userdata('add_val', $add_data);  
  $createdby=$this->session->userdata('add_val');
  //echo "<pre>";print_r($createdby['single_or_double']);
  

}

function add_on_item(){
  $add_on_id = $this->input->post('add_on_id');
  $item_id = $this->input->post('item_id');
  $status = $this->input->post('status');

  $ip = $this->session->userdata('user_id');

  if($this->session->userdata('user_id')!=''){
     $user_id = $this->session->userdata('user_id');
    

  }else{
    $user_id = $_SERVER['REMOTE_ADDR'];
   

  }

  $cart_count = count($this->cart->contents());
  $count = ($cart_count=='0'?'1':$cart_count);

  $add_detail = $this->Home_model->add_on_item_detail($user_id,$item_id,$add_on_id,$count);
  
  if($add_detail[0]['add_on_id'] !=''){
    $add_on_item_data = array(
    'user_id'=>$user_id,
    'item_id'=>$item_id,
    'add_on_id'=>$add_on_id,
    'status'=>$status,
    );

   //print_r($add_on_item_data);
   //exit;

    $status_val = $this->Home_model->update_add_on_item($add_on_item_data,'');
    if($status_val=='Active'){
      echo '1';

    }
    if($status_val=='Inactive'){
     echo '2';

    }
    

  }
  else{
    $add_on = array(
                'user_id'=>$user_id,
                'item_id'=>$item_id,
                'add_on_id'=>$add_on_id,
                'count'=>($cart_count+1),
              );
    
    $this->Home_model->add_on_item($add_on);
    echo '1';
    

 }

  //unset($_SESSION['add_on']);
  /*$add_on_data =$this->session->userdata('add_on');
  $add_on_id = array();

  //foreach($add_on_data as $row){
    //print_r($row['add_on_id']);
  if(!in_array($this->input->post('add_on_id'),$add_on_data)){
    
      $_SESSION['add_on'][] = array('add_on_id'=>$this->input->post('add_on_id'));
      $this->session->userdata('add_on');

  }

 //}
  
    $add_on_sub = array();
   foreach($add_on_data as $row){
     array_push($add_on_sub, $row['add_on_id']);
  }

 

 $add_on_id_list = implode(', ', $add_on_sub); */
 

   

}

function add_to_cart(){
  $session_item =$this->session->userdata('add_val');
    if($this->session->userdata('user_id')!=''){
     $user_id = $this->session->userdata('user_id');
    }else{
    $user_id = $_SERVER['REMOTE_ADDR'];
    }


  $add_on_data = $this->Home_model->GetAllAddOn($user_id);
  $add_on_sub = array();
  $total_sub_item = 0;
  foreach ($add_on_data as $key => $value) {
    $add_on_item_price = perticularFlied('tbl_addon','addon_price',array('id'=>$value['add_on_id'],'status'=>'Active'))[0];
    array_push($add_on_sub, $value['add_on_id']);
    $total_sub_item += $add_on_item_price['addon_price'];
  }
  //echo $total_sub_item;
  //exit;


  ///////// Add Cart Item ///////
  $cart_item = array(
    'id'=>$session_item['item_id'],
    'qty'=>1,
    'price'=>$session_item['item_price'],
    'name'=>$session_item['item_name'],
    'single_or_double'=>$session_item['single_or_double'],
    'the_quantity_description'=>$session_item['the_quantity_description'],
    'glass_add'=>$session_item['glass_add'],
    'city_id'=>$session_item['city_id'],
    'deliverydate'=>$session_item['deliverydate'],
    'deliverytime_id'=>$session_item['deliverytime_id'],
    'glass_add'=>$session_item['glass_add'],
    'options' => array(),
    //'add_on_id'=>$add_on_sub,
    'add_on_subtotal'=>($session_item['item_price'] + $total_sub_item),
  );

  $this->cart->insert($cart_item);
  echo "1";

    ///////// End Cart Item ///////
}

function login(){
   $this->load->view('front/login');

}

function user_data(){
  $data['email']= $this->input->post('email');
  $data['password'] = $this->input->post('password');
  $check_login = $this->Home_model->check_user($data);
    if($check_login!='') {
        redirect(base_url("dashboard"));


    }else {
     $this->session->set_flashdata('errmsg', "Invalid username and/or password.");
      redirect(base_url($this->controller."/login"));


    }


}

  // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  //
  // **************************** CAPTCHA REFRESH  CODE ***********************
  //
  // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  public function captcha_refresh(){
                 $cap_image=$this->_make_captcha();
                 echo $cap_image;
  }


  // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  //
  // ******************************** CAPTCHA  CODE **************************
  //
  // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  
  public function _make_captcha() {
    
    $pool = 'ABCDEFGHIJKLMNPQRSTUVWXYZ';

    $str = '';
    for ($i = 0; $i < 6; $i++)
    {
        $str .= substr($pool, mt_rand(0, strlen($pool) -1), 1);
    }

    $word = $str;

    $this -> load -> helper('captcha');
    $vals = array(
      'img_path' => './captcha/',
      'img_url' => base_url() . 'captcha/',
      'img_width' => 260,
      'img_height' => 60,
      'expiration' => 7200,
      'text_color'=>"#000000",
      'font_size' => 20,
      'font_path' => base_url().'webadmin/front/fonts/LucidaSansUnicode.ttf',
       'expiration' => 7200,
      'word'=>$word           
    );

    // Create captcha
    $cap = create_captcha($vals);

    // store captcha value on session       
    $this->session->set_userdata('captcha',$cap['word']);

    // Write to DB
    if ($cap) {
      $data = array('captcha_time' => $cap['time'], 'ip_address' => $this -> input -> ip_address(), 'word' => $cap['word'], );
      $query = $this -> db -> insert_string('captcha', $data);
      $this -> db -> query($query);
    } else {
      return "Umm captcha not work";
    }
    return $cap['image'];
   }  


function register(){
  $data['cap_img'] = $this -> _make_captcha();
   $this->load->view('front/register',$data);
 }

function register_data(){

if(strtolower($this->session->userdata('captcha')) != strtolower($this->input->post('captcha'))){
  $this->session->set_flashdata('errmsg', "Captcha Does Not Match.");
  redirect('register');

}else{
  
  $data['email_id']= $this->input->post('email');
  $data['full_name'] = $this->input->post('full_name');
  $data['contact_no']= $this->input->post('mob');
  $data['when_added']= date('Y-m-d H:i:s');
  
  if($this->input->post('password')==$this->input->post('confpassword')){
   $data['password'] = md5($this->input->post('password'));
   $data['user_password']=$this->input->post('password');

  }else{
    $this->session->set_flashdata('errmsg', "Password And Confirm Password Does Not Match.");
    redirect(base_url("register"));
  }

  $user_ecking = perticularFlied('tbl_user','*',array('email_id'=>$this->input->post('email')))[0];
  //echo $user_ecking['email_id']; exit;
    if($user_ecking['email_id'] ==''){

      $this->Home_model->add_user($data);

      $message = $this->load->view('front/email/user_registertion',$data,TRUE);
      //echo $message; exit;

      $mail=$this->mail_fuction($this->input->post('email'),"Thanks for Registering to the flowers",$message);

      redirect(base_url("dashboard"));



    }else{
      $this->session->set_flashdata('errmsg', "User alredy taken.");
      redirect(base_url($this->controller."/register"));
    }

  }

}

function forgot_password(){
   $this->load->view('front/forgot_password');

}

function forgot_data(){
  $this->load->library('email');
  $config['charset']='utf-8';
  $config['SMTPSecure']='tls';
  $config['newline']="\r\n";
  $config['wordwrap'] = TRUE;
  $config['mailtype'] = 'html';

  $this->email->initialize($config);
  $global = get_global_data('global_site_email_address');
  $global_site_name_en = get_global_data('global_site_name_en');

  //print_r($global->field_value);
  //exit;

  $data['user_detail'] = perticularFlied('tbl_user','*',array('email_id'=>$this->input->post('email')))[0];
  $this->Home_model->UpdateUserPassword($this->input->post('email'),'123456789');
  //print_r($data['user_detail']['email_id']);
  //exit;
  $data['user_detail']['update_password'] = '123456789';
  $message = $this->load->view('front/email/forgot_password',$data,TRUE);
  
  if($data['user_detail']['email_id']==''){
    $this->session->set_flashdata('errmsg', "User Not Found.");
      redirect(base_url("forgot-password"));

  }else{

    // $this->email->from($global->field_value,$global_site_name_en->field_value);
    // $this->email->to($this->input->post('email'));
    //$this->email->cc('another@another-example.com');
    //$this->email->bcc('them@their-example.com');

    //$this->email->set_header('Content-Type', 'text/html');
    // $this->email->subject('Forgot Password');
    // $this->email->message($message);

    // $this->email->send();

    $mail=$this->mail_fuction($this->input->post('email'),"Forgot Password saesha flowers",$message);

    $this->session->set_flashdata('succmsg', "Password Has been Sent Your Registerd Email");
    redirect(base_url("forgot-password"));

  }

   $this->load->view('front/forgot_password');
  

}

function dashboard(){
   checkUser($this->controller."/");
   $this->load->view('front/profile');

}

function user_logout(){
  $this->session->sess_destroy();
  $this->session->set_flashdata('succmsg', "Successfull Logout.");
  redirect(base_url("/login"));
 
}




function item_remove(){
  $row_id = $this->input->post('row_id');
  $data = array(
          'rowid'   => $row_id,
          'qty'     => 0
  );

$this->cart->update($data); 

}

function update_cart_item(){
  $count = $this->input->post('count');
  $item_id = $this->input->post('item_id');
  $qty = $this->input->post('qty');

  $stock = perticularFlied('tbl_item','stock',array('id'=>$item_id))[0];
  if($stock['stock'] >= $qty){

    if($this->session->userdata('user_id')!=''){
         $user_id = $this->session->userdata('user_id');
          }else{
          $user_id = $_SERVER['REMOTE_ADDR'];
          }

          $add_on_data = GetAllAddOn($user_id,$count);
          $add_on_sub = array();
          $total_sub_item = 0;
          //echo "<pre>";print_r($add_on_data);
          //exit;
            foreach($add_on_data as $key => $value) {

              $add_on_item_price = perticularFlied('tbl_addon','addon_price',array('id'=>$value['add_on_id'],'status'=>'Active'))[0];
              array_push($add_on_sub, $value['add_on_id']);
              $total_sub_item += $add_on_item_price['addon_price'];
            }
            //echo $total_sub_item;
            //exit;

             $row_id = $this->input->post('row_id');
             $qty = $this->input->post('qty');
             $item_id = $this->input->post('item_id');
             $price = $this->input->post('price');
       
             $data=array(
                  'rowid'=>$row_id,
                  'qty'=> $qty,
                  'add_on_subtotal'=>($total_sub_item+$price)*$qty,
                );
              $this->cart->update($data);
  }else{
    echo "0";

  }


}

function remove_add_on_item(){
  $id = $this->input->post('id');
  $row_id = $this->input->post('row_id'); 
  $user_id = $this->input->post('user_id');
  $item_id = $this->input->post('item_id');
  $add_on_id = $this->input->post('add_on_id');
  $item_price = $this->input->post('item_price');
  $qty = $this->input->post('qty');

  $this->Home_model->RemoveAddOnItem($id,$user_id,$item_id,$add_on_id);

    if($this->session->userdata('user_id')!=''){
     $user_id = $this->session->userdata('user_id');
    }else{
    $user_id = $_SERVER['REMOTE_ADDR'];
    }


  $add_on_data = $this->Home_model->GetAllAddOn($user_id);
  $add_on_sub = array();
  $total_sub_item = 0;
  foreach ($add_on_data as $key => $value) {
    $add_on_item_price = perticularFlied('tbl_addon','addon_price',array('id'=>$value['add_on_id'],'status'=>'Active'))[0];
    array_push($add_on_sub, $value['add_on_id']);
    $total_sub_item += $add_on_item_price['addon_price'];
  }

  $data=array(
        'rowid'=>$row_id,
        'add_on_subtotal'=>($total_sub_item+$item_price)*$qty,
        
      );
     //print_r($data);

   $this->cart->update($data);

}

function apply_coupon(){
  $coupon_code = $this->input->post('coupon_code');
  $coupon_detail = perticularFlied('tbl_coupon','*',array('coupon_code'=>$coupon_code,'status'=>'Active'))[0];

  if(count($coupon_detail) > 0){

    $coupon_detail = perticularFlied('tbl_coupon','*',array('coupon_code'=>$coupon_code,'status'=>'Active'))[0];

  }else{
    $coupon_detail = '0';

  }

  echo json_encode($coupon_detail);

}

function by_price(){
  $start = $this->input->get('start');
  $end = $this->input->get('end');
  $data['item_list'] = $this->Home_model->ItemSearchByPrice($start,$end);


  //echo "<pre>";print_r($data['item_list']);
  //exit;
  $data['page_title'] = 'By Price '.$start.' - '.$end;
  $this->load->view('front/search_by_price',$data);
}

function item_short_by(){
$sub_cat_id = perticularFlied('tbl_sub_categoery','id,sub_cat_name',array('slug'=>$this->input->post('sl'),'status'=>'active'))[0];
 $short_by = $this->input->post('short_by');
 $item_list = $this->Home_model->item_short_by($short_by,$sub_cat_id['id']);
 //echo "<pre>";print_r($item_list);
 //exit;

 $html ='<section class="listing-cont" id="default">
        <ul style="width:100%;">';
          if(!empty($item_list)){
            $hike_data = perticularFlied('tbl_hike_price','*',array('status'=>'Active'))[0];

            $hike_percent = hike_price_chk();
          
          
           foreach($item_list as $row):
            //print_r($row);
            if($row['price_percentage_variant'] =='High'){
            $item_pr = ($row['item_price'] * $row['price_percentage'] ) / 100;
            $item_price = ($row['item_price'] - $row['secial_price']) + $item_pr;
            }else{
            $item_price = ($row['item_price'] - $row['secial_price']);

            }

            #if Found Hike price
            if($hike_percent !=''){
              $item_prcent = ($item_price * $hike_percent) / 100;
              $item_price = ($row['item_price'] - $row['secial_price']) + $item_prcent;

            }/*else{
              $item_price = ($row['item_price'] - $row['secial_price']);

            }*/

          $html .='<li>
            <a href="'.base_url('item-detail?sl='.$row['item_slug']).'">
              <img class="pro-photo" src='.base_url().'img.php?img=item_image/'.$row['item_image'].'&amp;mode=cm&amp;w=270&amp;h=270" alt='.$row['item_name'].' title='.$row['item_name'].'>
              <h3 class="pro-title">'.$row['item_name'].'</h3>
              <p class="pro-price">$ '.number_format($item_price,2).'</p>
            </a>
          </li>';
         endforeach;
        }else{

          $html .='No Records Founds';

         }

        $html .='</ul> </section>';

      echo $html;

}

function by_price_short_by(){
 $short_by = $this->input->post('short_by');
 $item_list = $this->Home_model->by_price_short_by($short_by);
 //echo "<pre>";print_r($item_list);
 //exit;

 $html ='<section class="listing-cont" id="default">
        <ul style="width:100%;">';
          if(!empty($item_list)){
            $hike_data = perticularFlied('tbl_hike_price','*',array('status'=>'Active'))[0];

            $hike_percent = hike_price_chk();
          
          
           foreach($item_list as $row):
            //print_r($row);
            if($row['price_percentage_variant'] =='High'){
            $item_pr = ($row['item_price'] * $row['price_percentage'] ) / 100;
            $item_price = ($row['item_price'] - $row['secial_price']) + $item_pr;
            }else{
            $item_price = ($row['item_price'] - $row['secial_price']);

            }

            #if Found Hike price
            if($hike_percent !=''){
              $item_prcent = ($item_price * $hike_percent) / 100;
              $item_price = ($row['item_price'] - $row['secial_price']) + $item_prcent;

            }/*else{
              $item_price = ($row['item_price'] - $row['secial_price']);

            }*/

          $html .='<li>
            <a href="'.base_url('item-detail?sl='.$row['item_slug']).'">
              <img class="pro-photo" src='.base_url().'img.php?img=item_image/'.$row['item_image'].'&amp;mode=cm&amp;w=270&amp;h=270" alt='.$row['item_name'].' title='.$row['item_name'].'>
              <h3 class="pro-title">'.$row['item_name'].'</h3>
              <p class="pro-price">$ '.number_format($item_price,2).'</p>
            </a>
          </li>';
         endforeach;
        }else{

          $html .='No Records Founds';

         }

        $html .='</ul> </section>';

      echo $html;

}

function proceed_to_payment(){
  $post_user_email = $this->input->post('user_email');

  $user_email = perticularFlied('tbl_user','*',array('email_id'=>$post_user_email))[0];

  if($user_email['email_id'] !=''){
      $data['email']= $user_email['email_id'];
      $data['password'] = $user_email['password'];
      //print_r($data);
      //exit;
      $this->Home_model->user_login($data);
    }else{
      $user_data = array(
        'email_id'=>$post_user_email,
        'password'=>md5('econstra_developer'),
        'when_added'=>date('Y-m-d H:i:s'),
      );

      $last_id = $this->Home_model->add_user($user_data);
      $user_login_data['email_id'] = $post_user_email;
      $user_login_data['password'] = 'econstra_developer';
      $this->Home_model->check_user($user_login_data);

  }

  redirect(base_url("order-detail"));



}

////////////////// End Class /////////////////////

}
