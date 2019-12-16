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
		margin: 10px auto 0 auto;
		margin-top: 10px;
		margin-bottom: 0px;
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
	/*p {
		font-size: 14px!important;
		text-align: justify!important;
		letter-spacing: .09px!important;
	}*/
</style>
<?php $this->load->view('front/header-bottom.php'); ?>
<main itemscope itemtype="http://schema.org/Service">
	
	<div class="commonformbox login mg-top mg-bottom">
		<h3>User Login</h3>
		<div>
			<?php 
			if($this->session->flashdata('succmsg')){ ?>
			<div class="alert alert-success alert-dismissable">
			  <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			  <strong><?php echo $this->session->flashdata('succmsg');?></strong> 					
			</div>
		<?php }?>


			<?php 
			if($this->session->flashdata('errmsg')){ ?>
			<div class="alert alert-danger alert-dismissable">
			  <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			  <strong>Error! <?php echo $this->session->flashdata('errmsg');?></strong> 					
			</div>
		<?php } ?>
		
			<div class="alert alert-danger alert-dismissable" style="display:none">
			  <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			  <strong>Error!</strong> 					
			</div>
		</div>
		<form action="<?php echo base_url('welcome/user_data');?>" method="post">
			<div class="fieldrow">
				<label>Email Address :</label>
				<input type="email" name="email" id="email" class="form-control custfield">
			</div>
			<div class="fieldrow">
				<label>Password :</label>
				<input type="password" name="password" id="password" class="form-control custfield">
			</div>
			<div class="fieldrow">
				<button type="submit" class="cbttn">Login</button>
				<a href="<?php echo base_url();?>forgot-password" class="forgot">Forgot Password?</a>
				<p class="newuser">New User <a href="<?php echo base_url();?>register">Register Here</a></p>
			</div>
		</form>				
	</div>

<div class="clearfix"></div>

<?php $this->load->view('front/footer.php'); ?>