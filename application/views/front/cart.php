<?php $this->load->view('front/header-top.php'); ?>

<title>Saesha Flowers | Global Florist Delivering Fresh Flowers</title>
<meta name=""/>

<!--<link href="<?php //echo base_url();?>webadmin/front/i1.fnp.sg/v100/assets/min/product.css" rel="stylesheet">-->

<style>
	.carttab {
		float: left;
		width: 100%;
		padding: 0px;
		margin: 15px 0 0 0;
		border: none;
	}
	.carttab .nav-tabs {
		border: none;
		padding: 0 3.7777%;
	}
	.carttab .nav-tabs > li {
		margin: 0;
	}
	.carttab .nav-tabs > li > a {
		border: none !important;
		background-color: none;
		padding: 10px 25px 0px 0px;
		font-size: 24px;
		margin: 0;
		cursor:default;
		color: #666563;
		border-radius: 0;
		-moz-border-radius: 0;
		-webkit-border-radius: 0;
		line-height: 38px;
	}
	.carttab .nav-tabs > li > a span {
		width: 38px;
		height: 38px;
		margin-right: 10px;
		line-height: 38px;
		text-align: center;
		float: left;
		font-size: 24px;
		background: #666563;
		border-radius: 50%;
		color: #fff;
	}
	.carttab .nav-tabs > li.active > a {
		color:#ed8323;
	}
	.carttab .nav-tabs > li > a:hover,
	.carttab .nav-tabs > li > a:focus {
		background:transparent !important;
	}
	.carttab .nav-tabs > li.active > a span {
		width: 38px;
		height: 38px;
		line-height: 38px;
		text-align: center;
		float: left;
		font-size: 24px;
		background: #ed8323;
		border-radius: 50%;
		color: #fff;
	}
	.cart-table {}
	.cart-table thead {}
	.cart-table thead tr {}
	.cart-table thead tr th {
		font-weight: bold;
	}
	.carttotal strong {
		font-size: 20px;
	}
	.mrt-18 {
		margin-top: 5px;
		margin-bottom: 13px;
	}
	.carttotal .totalamout {
		font-size: 16px;
		line-height: 25px;
		width: 160px;
	}
	.crt-prc {
		font-weight: normal;
		font-size: 16px;
	}
	.carttotal .totalamout {
		font-size: 16px;
		line-height: 25px;
		width: 160px;
	}
	.cpn_code {
		width: 30%;
		padding: 0 10px;
		line-height: 30px !important;
		float: left;
		border: 1px solid #c0c0c0;
		border-radius: 5px;
	}
	.apply {
		background: #c6c4c4 !important;
	}
	.flap_btn {
		float: left;
		margin: 0px 0 0 20px;
		left: 0px;
		top: 0px;
	}
	.cbttn {
		display: inline-block;
		font-family: 'Open Sans', sans-serif;
		font-size: 14px;
		color: #ffffff;
		text-align: center;
		margin-top: 15px;
		padding: 5px 29px;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		background:	#ed8323;
		filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#837eba', endColorstr='#635da8', GradientType=0);
	}
	.pmt_box {
 font-size: 18px;
 margin: 0 0 20px;
 padding: 20px 30px;
 color: #31372d;
 font-weight: 400;
 background-color: #fffbf1;
 border: 1px solid #ed8323;
}
.pmt_inpt {
 width: 100%;
 padding: 0 10px;
 line-height: 30px !important;
 font-size: 14px;
 float: left;
 border: 1px solid #a9a9a9;
 border-radius: 5px;
 color: #888;
}
.pmtp_btn {
 float: left;
 margin: 15px 0 0 20px;
 left: 50%;
 top: 0%;
 margin-left: -100px;
}
	.cpn_code {
    width: 30%;
    padding: 0 10px;
    line-height: 30px !important;
    float: left;
    border: 1px solid 
    #c0c0c0;
    border-radius: 5px;
}
	.flap_btn {
    float: left;
    margin: 0px 0 0 20px;
    left: 0px;
    top: 0px;
}
	
</style>

<?php $this->load->view('front/header-bottom.php'); ?>

<main itemscope itemtype="http://schema.org/Service">
<meta itemprop="serviceType" content="Gifting"/>

<div id="content-messages" class="content-messages errorMessage" style=";display:none;">
	<ul></ul>
</div>	

<div itemscope itemtype="https://schema.org/BreadcrumbList" id="product-breadcrumb">
	<nav data-ga-category="MainContent" id="breadcrumbs" class="productnav product-wrapper" itemprop="itemListElement" itemscope  itemtype="http://schema.org/ListItem">
		<div class="breadcrumb-wrapper">
			<a itemprop="item name" class="navmenu" href="<?php echo base_url();?>">Home<meta itemprop="position" content="1"/></a>
			<i class="material-icons breadcrumb-icons">keyboard_arrow_right</i> 
			<span class="navmenu">Shopping Cart</span>
		</div>
	</nav>
</div>

<div class="row@@@@" itemscope itemtype="" data-ga-category="MainContent">
	
	<div class="carttab col-xs-12">
          <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a href="#!" data-toggle="tab"><span>1</span>Shopping Cart</a></li>
            <li><a href="#!" data-toggle="tab"><span>2</span>Delivery &amp; Payment</a></li>
          </ul>
          

          <div class="tab-content">
            		<?php $count = count($cart);
					if($count== 0 ){
						$style = 'style="display:none"';?>
          	<div class="no-item text-left" style="margin: 40px 0;">
          		No Item Found 
          	</div>
          <?php }?>
            <div class="tab-pane carttab active" id="byoccasion" <?php echo($count== 0 ?$style:'');?>>				
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 carttable">
						<div class="table-responsive">
							<?php //print_r($cart);?>

							<table class="table table-bordered cart-table" >
								<thead>
									<tr style="background:#FEF3DC;">
										<th>Product</th>
										<th>Product Details/Options</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Total</th>
										<th>Remove</th>
									</tr>
								</thead>
								<tbody>

									<?php
									$total = '0';
									$count = '1';
									 foreach($cart as $row){ 
									 	print_r($key);

									 	$total += $row['add_on_subtotal'];
									 	//echo "<pre>";print_r($row);
									 	$item_image = perticularFlied('tbl_item','item_image,item_code',array('id'=>$row['id']))[0];
										
										?>
									<tr>
										<td width="15%" valign="middle" align="center" style="vertical-align: middle;">
											<img src="<?php echo base_url().'img.php?img=item_image/'.$item_image['item_image'];?>&amp;mode=cm&amp;w=400&amp;h=400" class="dg_img" alt="<?php echo $row['name'];?>" style="border:1px solid #efefef;width:100px;">
										</td>
										<td width="35%" style="vertical-align: middle;">
											<p>Product ID : # <?php echo $item_image['item_code'];?> <br>
												<b></b>
												<br>
												<b>Addon Product :- </b>
											</p>
											<table width="100%">
												<tbody>
													<?php
													if($this->session->userdata('user_id')!=''){
												     $user_id = $this->session->userdata('user_id');
												    }else{
												    $user_id = $_SERVER['REMOTE_ADDR'];
												    }

												    $add_on_data = GetAllAddOn($user_id,$count);
												    
													
													 foreach($add_on_data as $add){ 
													 	//print_r($add);?>
													<tr>
														<td width="15%" valign="middle" align="center">

															<?php $sub_item = perticularFlied('tbl_addon','image,addon_name,addon_price',array('id'=>$add['add_on_id']))[0];?>


															<img src="<?php echo base_url().'img.php?img=addon/'.$sub_item['image'];?>&amp;mode=cm&amp;w=45&amp;h=45" class="img" style="border:1px solid #efefef; width:80%; padding-bottom:4px;" vspace="0" hspace="4" border="0">
														</td>
														<td width="48%">+ <?php echo $sub_item['addon_name'];?> X  <?php echo $row['qty'];?></td>
														<td width="70%" align="right">
															<span class="indian_webRupee">Rp.</span> 552000<span class="indian_webRupee"> / $.</span> <?php echo $sub_item['addon_price'];?>
														</td>
														<td width="20" align="center">
															<input type="button" name="delete_prod_addon" value="x" style="font-weight:bold;border:0px solid #000000;color:#ff0000;background:transparent;padding:0px;margin:0 5px 5px 5px;font-size: 19px;" onclick="remove_add_on_item('<?php echo $add['id'];?>','<?php echo $add['user_id'];?>','<?php echo $row['rowid'];?>','<?php echo $add['item_id'];?>','<?php echo $add['add_on_id'];?>','<?php echo $row['price'];?>','<?php echo $row['qty'];?>');" title="Remove Add on Item">
														</td>
													</tr>




												<?php
												
												 } ?>


												</tbody>
											</table>
											<p></p>
										</td>
										<td class="cart_tr" style="text-align: center; vertical-align: middle;">
											<input type="text" id="update_qty" class="quantitycart cart_input td_no" min="1" maxlength="2" style="width:40px;border:1px solid #ddd;padding: 3px;text-align: center;" value="<?php echo $row['qty'];?>">
											<br>
											<a href="javascript:void(0)" class="updateCartbtn" id="updateCart1" data-uri="1" style="color: #ed832f; text-decoration: none; font-size:12px;" onclick="update_cart_item('<?php echo $row['rowid'];?>','<?php echo $row['id'];?>','<?php echo $row['price']?>','<?php echo $count;?>')">Update</a>
												<br>
											<span id="stock_error_<?php echo $count;?>" style="color:red; display: none;"></span>
										</td>
										<td class="cart_tr" style="text-align: center; vertical-align: middle;">
											<span class="indian_webRupee">Rp</span> 380000<span class="indian_webRupee"> / $</span> <?php echo $row['price'];?>
										</td>
										<td class="cart_tr" style="text-align: center; vertical-align: middle;">
											<span class="indian_webRupee">Rp</span> 932000<span class="indian_webRupee"> / $</span> <?php echo $row['add_on_subtotal'];?>
										</td>
										<td class="cart_tr" style="text-align: center; vertical-align: middle;"> 
											<div class="dlt_bck" onclick="item_remove('<?php echo $row['rowid'];?>')" title="Remove" style="cursor: pointer;">
												<i class="fa fa-trash-o"></i>
											</div>
										</td>



									</tr>
									
								<?php
								$count++;
								 } ?>
								</tbody>
							</table>					
						</div>
					</div>
				</div>
             
				
				
				
				<div class="row">
					<div class="col-md-7 col-sm-12 col-xs-12 carttotal">
                 <strong>CART TOTAL :</strong><br>
					<div class="mrt-18">
					<label class="totalamout">Total  : </label>
					<label class="crt-prc">
						Rp 932000/
						$ <?php echo $total;?>	</label><br>
                	
					<span style="font-size:13px; color:#666; display:none">
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div>
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div>
% Discount :</span> 
						<span style="color:#666; font-size:13px;  display:none">
							
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;">
</div>Rp 0
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div>
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div> 
						

																		
						
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div>$ 0.00
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div>
<div style="border:1px solid #990000;padding-left:20px;margin:0 0 10px 0;"></div> 
												</span>
					
						
					<?php 
					$delivery_charge = perticularFlied('tbl_delivery_charges','delivert_charge',array('city_id'=>$row['city_id'],'id'=>$row['deliverytime_id']))[0];

					?>					
					
					<label class="totalamout"> Delivery Charges : </label>
					<label class="crt-prc">
						Rp 200000												/
						$ <?php echo $delivery_charge['delivert_charge']; ?>										</label><br>
                  
					 <label class="totalamout">
						 Grand Total : 
					</label>
					<label class="crt-prc">
						 Rp 1132000	
						 											/
						$ <?php echo ($row['add_on_subtotal'] + $delivery_charge['delivert_charge']);?>

						<input type="hidden" name="" value="<?php echo ($row['add_on_subtotal'] + $delivery_charge['delivert_charge']);?>" id="hidden_grand_total">
						</label><br>


				<label class="totalamout">
						 Discount : 
					</label>

				   <label class="crt-prc">
						 
						<span id="discount_amount" style="display: none;">
						</label><br>

				  <label class="totalamout">
						Total : 
					</label>

				   <label class="crt-prc">
						 Rp 1132000	/
						$ <span id="total_amount"><?php echo ($row['add_on_subtotal'] + $delivery_charge['delivert_charge']);?></span>
						</label><br>
						</label><br>

                  
					</div>
					<form class="row mr_40" id="coupon" action="<?php echo base_url('welcome/apply_coupon');?>" method="POST">
					<div class="col-md-12">
						<input placeholder="Enter Coupon Here" name="coupon" class="cpn_code cou coup" value="" type="text" autocomplete="off" id="coupon_code">
					
					
					<a class="apply cbttn frbtn flap_btn" id="applycoupan" href="#" onclick="apply_coupon()">Apply</a>
					
					<a class=" cbttn frbtn flap_btn" href="<?php echo base_url();?>">Buy More </a>
					
					<span id="checkPromocode" style="min-height:20px;height:20px;width:100%;float:left;text-align:left;">&nbsp;	</span>
					
					<div class="col-md-6" style="padding-left:0px;">
						<div class="alert alert-danger alert-dismissable" style="display:none" id="error_msg">
						  <a style="padding-right:10px;" href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						  <strong>Error!</strong> Please enter valid coupon code
						</div>
						<div class="alert alert-danger alert-dismissable" style="display:none">
						  <a style="padding-right:10px;" href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						  <strong>Error!</strong> 						</div>
						</div>
						
						
                  	</div>
					</form>
					
                </div>
					
					<div class="col-md-5 col-sm-12 col-xs-12 pmt_box">
					<form id="frm_checkout" action="<?php echo base_url('welcome/proceed_to_payment');?>" method="post">
										
					<input type="email" name="user_email" class="pmt_inpt" placeholder="Enter Email" required="">
						<button class="cbttn frbtn pmtp_btn" type="submit">Proceed To Payment</button>
					</form>
				</div>
              </div>
             
				
				
				
				
				
				
            </div>
            
            <!--Payment-->
            
          </div>
      </div>
	
	
	
	
	<div class="clearfix"></div>	
 <script type="text/javascript">
 	function item_remove(row_id){
 	 var url = '<?php echo base_url('cart');?>';
	if(confirm("Are you sure to delete of this Item ?"))
	{
		$.ajax({
			url : '<?php echo base_url('welcome/item_remove/'); ?>',
			type : 'POST',
			data : 'row_id=' + row_id,
			//dataType : 'json',
			beforeSend : function(jqXHR, settings ){
				//alert(url);
			},
			success : function(data, textStatus, jqXHR){
				 window.location.href = url;
				
			},
			
			error : function(jqXHR, textStatus, errorThrown){
			}
		});
	}
}

function update_cart_item(rowid,item_id,price,count){

	var qty = $('#update_qty').val();
	var url = '<?php echo base_url('cart');?>';
 	$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/update_cart_item');?>',
				data:{'row_id':rowid,'qty':qty,'item_id':item_id,'price':price,'count':count},
				success: function(data){
					//alert(data);
					if(data =='0'){
						$('#stock_error_'+count).show();
						$('#stock_error_'+count).html('Stock Not Available');

					}else{
					  window.location.href = url; 

					}
				
					
		}
	});



}
 	
 function remove_add_on_item(id,user_id,row_id,item_id,add_on_id,item_price,qty){
 	var url = '<?php echo base_url('cart');?>';
	if(confirm("Are you sure to delete of this Add on Item ?"))
	{
		$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/remove_add_on_item');?>',
				data:{'id':id,'user_id':user_id,'row_id':row_id,'item_id':item_id,'add_on_id':add_on_id,'item_price':item_price,'qty':qty},
				success: function(data){
					//alert(data);
				window.location.href = url; 
					
		}
	});
	}

 }

 function apply_coupon(){
 	var coupon_code = $('#coupon_code').val();
 	
 	$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/apply_coupon');?>',
				data:{'coupon_code':coupon_code},
				success: function(data){
					b = jQuery.parseJSON(data);
					if(b=='0'){
						var hidden_grand_total =  parseFloat($('#hidden_grand_total').val());
						//alert(hidden_grand_total);
						$('#error_msg').show();
						$('#coupon_code').val('');
						$('#discount_amount').html('');
						$('#total_amount').html(hidden_grand_total);

					}
					else if(b.coupon_type=='percentage'){
								$('#error_msg').hide();
								$('#discount_amount').show();
								$('#discount_amount').html(b.coupon_value+' %');

								var hidden_grand_total =  parseFloat($('#hidden_grand_total').val());
								var coupon_amt = parseFloat(b.coupon_value);
								var total = hidden_grand_total -(hidden_grand_total * (coupon_amt/100));

								$('#total_amount').html(total);

						}
					else{
									$('#error_msg').hide();
									$('#discount_amount').show();
									$('#discount_amount').html('$'+b.coupon_value);

									var hidden_grand_total =  parseFloat($('#hidden_grand_total').val());
									var remaing_amt = parseFloat(b.coupon_value);

									$('#total_amount').html(hidden_grand_total - remaing_amt);
						   
						}
			}
	});

 }
 </script>  
<?php $this->load->view('front/footer.php'); ?>
