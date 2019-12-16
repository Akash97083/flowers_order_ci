<?php $this->load->view('front/header-top.php'); ?>
<title>Saesha Flowers | Global Florist Delivering Fresh Flowers</title>
<meta name=""/>
<style>
	.mg-bottom {
		margin-bottom: 150px!important;
	}
	.mg-top {
		margin-top: 80px!important;
	}
	.commonformbox {
		background-color: #fffbf1;
		border: 1px solid #ed8323;
		width: 620px;
		margin: 40px auto;
		padding: 25px 30px;
	}
	.commonformbox h3 {
		font-size: 24px;
		font-weight: bold;
	}
	.commonformbox .fieldrow {
		display: inline-block;
		width: 100%;
		margin-top: 10px;
	}
	.commonformbox label {
		color: #666;
		font-size: 15px;
		font-weight: normal;
		margin-bottom: 5px;
	}
	.commonformbox .custfield {
		height: 36px;
		border: 1px solid #cccccc;
	}
	.cbttn {
		display: inline-block;
		font-family: 'Open Sans', sans-serif;
		font-size: 16px;
		color: #ffffff;
		text-align: center;
		margin-top: 15px;
		padding: 5px 29px;
		border-radius: 24px;
		-moz-border-radius: 24px;
		-webkit-border-radius: 24px;
		background: #ed8323;
		background: #ed8323;
		filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#837eba', endColorstr='#635da8', GradientType=0);
	}
	.commonformbox .forgot, 
	.commonformbox .newuser {
		display: inline-block;
		color: #666;
		margin: 0 15px;
	}
	.commonformbox .newuser a, 
	.commonformbox .forgot:hover {
		color: #ed8323;
	}
	p {
		font-size: 14px!important;
		text-align: justify!important;
		letter-spacing: .09px!important;
	}
</style>
<?php $this->load->view('front/header-bottom.php'); ?>
<main itemscope itemtype="http://schema.org/Service">
	
	<div class="commonformbox registerpage">
		<?php 
			if($this->session->flashdata('errmsg')){ ?>
			<div class="alert alert-danger alert-dismissable">
			  <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			  <strong>Error! <?php echo $this->session->flashdata('errmsg');?></strong> 					
			</div>
		<?php } ?>
		
		<h3>User Registration Form</h3>
		<form action="<?php echo base_url('welcome/register_data');?>" method="post">
			
			<div class="fieldrow">
				<label>User Name (Email)*</label>
				<input type="email" name="email" id="email" value="" class="form-control custfield" required="">
			</div>
			<div class="fieldrow">
				<label>Password</label>
				<input type="password" name="password" id="password" value="" class="form-control custfield">
			</div>
			<div class="fieldrow">
				<label>Confirm Password*</label>
				<input type="password" name="confpassword" id="confpassword" value="" class="form-control custfield" required="">
			</div>
			<div class="fieldrow">
				<label>Full Name*</label>
				<input type="text" name="full_name" id="name" value="" class="form-control custfield" required="">
			</div>
			<div class="fieldrow">
				<label>Mobile No.*</label>
				<input name="mob" id="mob" autocomplete="off"  type="text" min="10" maxlength="15" value="" class="form-control custfield" required="">
			</div>
			<div class="fieldrow">
				<label>Verify the Code*</label>
				<div class="codeimg"> 
					<div class="row" style="margin:0px;">
					   <div class="col-md-6 image" style="padding-left:0px; margin-bottom: 15px;">
						   <!-- <img src="https://www.probunga.com/saiflora130100/uploads/captcha/1575282438.1682.jpg" style="width: 200; height: 55; border: 0;" alt=" "> -->


						<div class="innerwidth-right">
							<span class="captch_image"><?php echo $cap_img; ?></span>&nbsp;
							
						</div>

					   </div>
						<div class="col-md-6">
							<a class="refresh" href="javascript:;" style="margin: 13px 0;">
								<i class="fa fa-refresh" aria-hidden="true" style="font-size: 34px;" onClick="captchaRefresh();"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fieldrow">
				<label>Enter Captcha *</label>
				<input name="captcha" id="captcha" autocomplete="off" onkeyup="IsChkNumc(this);" onchange="IsChkNumc(this);" type="text" value="" class="form-control custfield">
			</div>
			<div class="fieldrow">
				<button type="submit" class="cbttn">Register</button>
				<!--<a href="<?php echo base_url();?>" class="forgot">Forgot Password?</a>-->
				<p class="newuser">Existing User? <a href="<?php echo base_url();?>login">Login</a></p>
			</div>

		</form>
	</div>

<div class="clearfix"></div>
<script type="text/javascript">
		function captchaRefresh(){
		  
		 $.ajax({
			 type:"POST",
			 url:"<?php echo base_url() ?>welcome/captcha_refresh",
			 success:function(msg){
				$(".captch_image").html(msg);
			 }
		 });
	}
</script>
<?php $this->load->view('front/footer.php'); ?>