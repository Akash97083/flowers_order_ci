<?php $this->load->view('front/header-top.php'); ?>

<title>Saesha Flowers | Global Florist Delivering Fresh Flowers</title>
<meta name=""/>

<!--<link href="<?php //echo base_url();?>webadmin/front/i1.fnp.sg/v100/assets/min/product.css" rel="stylesheet">-->

<style>
	.product-detail-div {
		margin-top: 30px;
		margin-bottom: 30px;
	}
	.product-option h4 span {
		color: 	#666;
		font-family: 'Open Sans',sans-serif;
		font-weight: bold;
		border-bottom: 1px dotted #666666;
		margin-bottom: 10px;
	}
	.product-detail-div #tabs {
		padding: 10px;
	}
	.product-detail-div #tabs .scroll-pane .tab {
		background-color:#fcfcfc;
		padding: 15px;
		border: 1px solid #f1f1f1;
	}
	.product-detail-div #tabs .scroll-pane .tab .tab-content {
		padding: 0;
	}
	
	.stand_tit {
		font-family: 'Open Sans', sans-serif;
		font-size: 18px;
		margin: 0 0 15px;
		padding: 6px 8px;
		color: #31372d;
		font-weight: 400;
		background-color: #fffbf1;
		border: 1px solid #fef3dc;
	}
	.stand_tit .optbox {
		display: inline-block;
		margin: 5px 0px;
	}
	.stand_tit .optbox input[type="radio"] {
		margin: 0 10px 0 0;
	}
	.stand_tit .optbox label {
		margin: 0;
		font-size: 16px;
		font-weight: 600;
		line-height: 22px;
	}
	.stand_tit .optbox span {
		display: block;
		color: #666;
		font-size: 15px;
		font-weight: 600;
		margin-top: 5px;
	}
	.stand_tit .optbox p {
	    font-size: 13px;
	}
	.upgradeopt {
		margin-top: 20px !important;
	}
	.upgradeopt h4 span {
		color:#666;
		font-family: 'Open Sans',sans-serif;
		font-weight: bold;
		border-bottom: 1px dotted #666666;
	}
	.upgradeopt .upinner {
		background-color: #fffbf1;
		border: 1px solid #fef3dc;
		padding: 6px 24px;
		margin: 10px 0;
	}
	.upgradeopt .upinner input {
		display: inline-block;
	}
	.upgradeopt .upinner input[type="checkbox"] {
		margin-top: 3px !important;
		float: left;
	}
	.upgradeopt .upinner label {
		display: inline-block;
		font-size: 16px;
		font-weight: normal;
		margin: 0 10px 0 5px;
	}
	.upgradeopt .upinner .textline {
		display: inline-block;
		font-family: "Open Sans", sans-serif;
		font-size: 16px;
		font-weight: normal;
	}
	.upgradeopt .upinner .textline span {
		color: #666;
		font-weight:bold;
	}
	label.delv_tit {
		width: 100%;
		float: left;
		font-size: 13px;
		font-weight: normal;
		margin: 3px 20px 10px 0;
		color: #363731;
		font-size: 18px;
	}
	label.delv_tit span {
		border-bottom: 1px dotted #666666;
		color:#666;
		padding-bottom: 3px;
		font-family: 'Open Sans',sans-serif;
	}
	select.delv_slct {
		cursor: pointer;
		font-size: 14px;
		color: #4b4b4a;
		background-image: url(<?php echo base_url();?>webadmin/front/images/droparrow2.png);
		background-repeat: no-repeat;
		background-position: 95% 50%;
		width: 100%;
		padding: 7px 7px;
		appearance: none;
		-moz-appearance: none;
		-webkit-appearance: none;
		margin-bottom: 10px;
	}
	select.delv_slct option {
		color: #636363;
	}
	.delevery-option {
		background-color:#fffbf1;
		border: 1px solid #fef3dc;
		margin-top: 15px !important;
		padding: 15px;
	}
	.btn-cont1 {
		text-transform: uppercase;
		background: #ed8323;
		color: #fff;
		padding: 9px 24px;
		font-size: 18px;
		border-radius: 3px;
		float: right;
		margin-top: 29px;
	}
	.btn-cont1:hover, 
	.btn-cont1:focus, 
	.btn-cont1:active {
		color: #fff;
		text-decoration: none;
	}
	.tabs-menu a {
		background-color: #fef3dc;
		color: #000;
	}
	.tabs-menu a:hover, 
	.ui-state-active a, 
	.ui-state-active a:link, 
	.ui-state-active a:visited {
		color:#fff;
		font-family: "Roboto";
		font-weight: 400;
		background-color:#ed8323;
	}
	.mo-gift {
		padding: 9px 25px 0;
		font-size: 25px;
	}
	.commonmodal button.close {
		position: absolute;
		z-index: 5;
		font-size: 31px;
		margin-right: 12px;
		right: 0px;
		top: 3px;
	}
	ul.by_flwr {
		float: left;
		width: 100%;
		padding-bottom: 0px;
		list-style: none !important;
		background: none;
		height: 470px;
		overflow-y: scroll;
	}
	ul.by_flwr li {
		float: left;
		width: 18%;
		border: 1px solid 
		#ececec;
		margin: 0px 1% 20px;
		text-align: center;
		background: none;
		position: relative;
	}
	ul.by_flwr li:first-child {
		background: none;
	}
	.check_main {
		display: block;
		width: 100%;
		height: 100%;
		position: absolute;
		padding-left: 35px;
		margin-bottom: 12px;
		cursor: pointer;
		font-size: 22px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	.uncheckcheckBox {
		position: absolute;
		top: -4px;
		opacity: 0.78;
		right: 3px;
	}
	ul.by_flwr li .img {
		display: block;
	}
	ul.by_flwr li .img img {
		width: 100%;
		height: 165px;
	}
	ul.by_flwr li .name {
		border-top: 1px solid #fef3dc;
		padding: 4px 0;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	ul.by_flwr li .name p {
		text-align: center;
	}
	.thnku {
		background: transparent;
		font-size: 17px;
		margin-right: 14px;
		border: none;
	}
	.cbttn, 
	.cbttn:hover, 
	.cbttn:focus, 
	.cbttn:active {
		background:#ed8323;
		display: inline-block;
		font-family: 'Open Sans', sans-serif;
		font-size: 16px;
		color:#ffffff;
		text-align: center;
		margin-top: 15px;
		padding: 9px 24px;
		border: none;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;		
	}
	
	
	
	
	
	
	.slick-prev, .slick-next {
		display: block !important;
	}
	.productnav {
		margin: 30px 20px;
	}
	#breadcrumbs span {
		/*color: #666;
		font-weight:400;*/
	}
	#breadcrumbs a:hover {
		color: #31afac;
	}
	#breadcrumbs * {
		text-decoration: none;
		color: #000;
		font-size: 14px;
		font-weight: 300;
		letter-spacing: 0.15px;
	}
	#breadcrumbs span {
		color: #31afac;
		font-weight: 300;
	}
	.breadcrumb-icons {
		font-size: 20px !important;
		vertical-align: middle;
	}
	.prodimgslider #product {
		/*width: 364px;
		height: 364px;*/
	}
	.column,
	.columns {
		/*position: relative;
		padding-left: 0.9375rem;
		padding-right: 0.9375rem;
		float: left;*/ 
	}

	.large-1 {
		width: 8.33333%; 
	}

	.large-2 {
		width: 16.66667%; 
	}

	.large-3 {
		width: 25%; 
	}

	.large-4 {
		width: 33.33333%; 
	}

	.large-5 {
		width: 41.66667%; 
	}

	.large-6 {
		width: 50%; 
	}

	.large-7 {
		width: 58.33333%; 
	}

	.large-8 {
		width: 66.66667%; 
	}

	.large-9 {
		width: 75%; 
	}

	.large-10 {
		width: 83.33333%; 
	}

	.large-11 {
		width: 91.66667%; 
	}

	.large-12 {
		width: 100%; 
	}

	.large-offset-0 {
		margin-left: 0 !important; 
	}

	.large-offset-1 {
		margin-left: 8.33333% !important; 
	}

	.large-offset-2 {
		margin-left: 16.66667% !important; 
	}

	.large-offset-3 {
		margin-left: 25% !important; 
	}

	.large-offset-4 {
		margin-left: 33.33333% !important; 
	}

	.large-offset-5 {
		margin-left: 41.66667% !important; 
	}

	.large-offset-6 {
		margin-left: 50% !important; 
	}

	.large-offset-7 {
		margin-left: 58.33333% !important; 
	}

	.large-offset-8 {
		margin-left: 66.66667% !important; 
	}

	.large-offset-9 {
		margin-left: 75% !important; 
	}

	.large-offset-10 {
		margin-left: 83.33333% !important; 
	}

	.large-offset-11 {
		margin-left: 91.66667% !important; 
	}
</style>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<?php $this->load->view('front/header-bottom.php'); ?>	

<main itemscope itemtype="http://schema.org/Service">
<meta itemprop="serviceType" content="Gifting"/>

<?php //print_r($item_deiail);?>

<div id="content-messages" class="content-messages errorMessage" style=";display:none;">
	<ul></ul>
</div>
	
<input type="hidden" id="isCustomizedCategory" value="false">
<div itemscope itemtype="https://schema.org/BreadcrumbList" id="product-breadcrumb">
	<nav data-ga-category="MainContent" id="breadcrumbs" class="productnav product-wrapper" itemprop="itemListElement" itemscope  itemtype="http://schema.org/ListItem">
		<div class="breadcrumb-wrapper">
			<a itemprop="item name" class="navmenu" href="<?php echo base_url();?>">Home<meta itemprop="position" content="1"/></a>
			<i class="material-icons breadcrumb-icons">keyboard_arrow_right</i> 
			<span class="navmenu"><?php echo $item_deiail['item_name'];?></span> 
			<meta itemprop="position" content="2" />
		</div>
	</nav>
</div>
<!-- <script>
    var defaultVariantKey = null;
    var defaultSubVariantKey = null;
    var features = null;
    var eventDays = '07-02-2017,13-02-2017,14-02-2017,15-02-2017';
    var eventDates;
	if(eventDays){
	     eventDates = eventDays.split(',');
	}
</script> -->
<?php //echo "<pre>";print_r($item_deiail);
	
	if($item_deiail['price_percentage_variant'] =='High'){
		$item_pr = ($item_deiail['item_price'] * $item_deiail['price_percentage'] ) / 100;
		$item_price = ($item_deiail['item_price'] - $item_deiail['secial_price']) + $item_pr;

		$item_pr1 = ($item_deiail['double_the_quantity_price'] * $item_deiail['price_percentage'] ) / 100;
		$double_item_price = ($item_deiail['double_the_quantity_price'] - $item_deiail['secial_price']) + $item_pr1;

		}else{

			$item_price = ($item_deiail['item_price'] - $item_deiail['secial_price']);
			$double_item_price = ($item_deiail['double_the_quantity_price'] - $item_deiail['secial_price']);
			}

	$hike_data = perticularFlied('tbl_hike_price','*',array('status'=>'Active'))[0];
	$hike_percent = hike_price_chk();

	#if Found Hike price
	if($hike_percent !=''){
		$item_prcent = ($item_price * $hike_percent) / 100;
		$item_price = ($item_deiail['item_price'] - $item_deiail['secial_price']) + $item_prcent;

		$item_double_pr1 = ($double_item_price * $hike_percent) / 100;
		$double_item_price = ($item_deiail['double_the_quantity_price'] - $item_deiail['secial_price']) + $item_double_pr1;

	}/*else{
		$item_price = ($item_deiail['item_price'] - $item_deiail['secial_price']);
		$double_item_price = ($item_deiail['double_the_quantity_price'] - $item_deiail['secial_price']);

	}*/

?>
<input type="hidden" name="item_id" id="item_id" value="<?php echo $item_deiail['id'] ?>"/>
<input type="hidden" name="item_name" id="item_name" value="<?php echo $item_deiail['item_name'] ?>"/>


<div class="row@@@@" itemscope itemtype="" data-ga-category="MainContent">
	<div id="productimage" class="col-md-4 prodimgslider">
		<div class="row">
			<div class="medium-12 large-12 columns">
				<div id="product" class="product-selected">
					<div class="slideable">
						<img src="<?php echo base_url().'uploads/item_image/'.$item_deiail['item_image'];?>"/>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="product-option col-md-8">
		<h4><span>Choose Product Option</span></h4>
		<div class="row stand_tit" style="margin: 0;">
			<input type="hidden" name="pid" value="32532">
        	<div class="optbox col-md-6">
        		<h5>
        			<input type="radio" name="chkdouble" value="single" onclick="double('single')" checked=""><label for="stand">As Shown</label>
        		</h5>
        		<span>Rp 120000 / $ <?php echo number_format($item_price,2);?></span>
        		<p><?php echo $item_deiail['shown_short_description'];?></p>
        		<input type="hidden" name="as_shown" id="as_shown" value="<?php echo $item_price;?>">
        		<input type="hidden" name="as_shown_description" id="as_shown_description" value="<?php echo $item_deiail['shown_short_description'];?>">
        	</div>
        	<div class="optbox col-md-6">
        		<h5>
        			<input class="pr-rdo" type="radio" name="chkdouble" id="chkdouble" value="double" onclick="double('double')"><label for="deluxe">Double The Quantity</label>
        		</h5>
        		<span>Rp 120000 / $ <?php echo number_format($double_item_price,2);?></span>
        		<p><?php echo $item_deiail['double_qty_description'];?></p>

        		<input type="hidden" name="double_the_quantity" id="double_the_quantity" value="<?php echo $double_item_price;?>">
        		<input type="hidden" name="double_the_quantity_description" id="double_the_quantity_description" value="<?php echo $item_deiail['double_qty_description'];?>">
        	</div>
        </div>
		<div class="row upgradeopt" style="margin: 0;">
			<h4><span>Upgrade Option</span></h4>
			<div class="upinner">
				<input type="hidden" name="pid" value="32532">
				<input type="checkbox" name="checkvase" id="vase" value="glass_add"><label>Add Glass Vase</label>
				<div class="textline"><span>Rp 120000 / $ <?php echo $item_deiail['upgrade_option_price'];?></span> Extra</div>
				<input type="hidden" name="" id="add_glass" value="<?php echo $item_deiail['upgrade_option_price'];?>">
			</div>
		</div>
		<div class="row delevery-option" style="margin: 0;">
			<div class="col-md-6">				
				<label class="delv_tit">
					<span style="border: 0px; font-size: 16px;">Step 1.</span>
					<span>Delivery City</span>
				</label>

				<?php $city = perticularFlied('tbl_city','*',array('status'=>'active'));
				?>
				<select class="control-form delv_slct" name="city" id="city" onchange="select_delivery_date(this.value)">
					<option value="">Choose City</option>
					<?php foreach ($city as $key => $ct_val) { ?>
						<option value="<?php echo $ct_val['id'];?>"><?php echo $ct_val['city_name'];?></option>
					<?php }	?>				
					
					
				</select>				
				<label class="delv_tit">
					<span style="border: 0px; font-size: 16px;">Step 2.</span>
					<span>Delivery Date</span>
				</label>
				<!-- <input type="text" class="form-control deliverydate" placeholder="click to choose" id="deliverydate" style="border-radius: 0;"> -->

				<input type="text" name="date1" class="form-control deliverydate" placeholder="click to choose" id="deliverydate">
				
				<p id="dateloader" class="text-danger ste1" style="display:none">Wait date is loading...</p>
			</div>
			<div class="col-md-6">
				<label class="delv_tit">
					<span style="border: 0px;font-size: 16px;">Step 3.</span>
					<span>Delivery Time</span>
				</label>
				<select class="control-form delv_slct" id="deliverytime" name="deliverytime" onchange="select_delivery_time(this.value)">
					<option value="" selected="selected">Choose Time</option>
					
				</select>   
				<p id="deliverytimeloader" class="text-danger" style="display:none">Checking for delivery time...</p>
				<p id="midnightchkr" class="text-danger" style="display:none; font-size:11px;">
					<strong>If the occasion is on 11th Dec, then select 10th Dec, as the date of Midnight delivery.</strong>
				</p>

				<div class="txt-ct">
					<?php if($item_deiail['stock'] > 0){ ?>

						<div id="default_continue">
						<a class="continuepopup btn-cont1" href="javascript:void(0)" 
						style="background-color:#ed832359;cursor: not-allowed">continue </a>
						</div>

						<div id="continue" style="display: none;">
						<a class="continuepopup btn-cont1" href="#" data-toggle="modal" data-target="#myModal" onclick="add_val()" id="continue">continue
						</a>
						</div>

				<?php }else{ ?>
					<a class="continuepopup btn-cont1" href="javascript:void(0)">Item not available</a>
				<?php }?>
					
				</div>
			</div>
		</div>
	</div>
	
	<div class="product-detail-div medium-12 large-12 columns medium-xx">
		<div id="tabs">
			<ul class="tabs-menu row" data-ga-category='MainContent'>
				<li class="medium-4@@ columns@@ tbli"><a href="#tab-1"><span class="linecont">Description</span></a></li>
				<li class="medium-4@@ columns@@ tbli"><a href="#tab-2"><span class="linecont">Shipping Information</span></a></li>
				<li class="medium-4@@ columns@@ tbli"><a href="#tab-3"><span class="linecont">FAQ</span></a></li>
			</ul>
			<div class="scroll-pane">
				<ul>
					<li>
						<div class="tab">
							<div id="tab-1" class="tab-content" itemprop="description">
								<h4>Product Code: # <?php echo $item_deiail['item_code'];?></h4>
								<p><?php echo $item_deiail['description'];?></p>
							</div>
							<div class="tab-content" id="tab-2">
								<h4>Flower Substitution Policy</h4>
								<p>If your arrangement calls for a bloom we find to be below standard at the market on that given day, we will substitute it with one of the same character, quality, and color so that your arrangement is made of only the finest and freshest flowers.</p>
								<h4>Accessory Substitution Policy</h4>
								<p>Vases, Baskets, etc. may vary. The exact accessory shown on the product image is not guaranteed and depends upon availability. The gift will not change but the accessory may vary in color, shape, etc. If a substitution is required one of equal value &amp; style will be substituted in its place.</p>
							</div>
							<div id="tab-3" class="tab-content">
								<h3 style="margin-bottom: 20px;">Frequently Asked Questions</h3>
								<h5>What is the charge for same day delivery?</h5>
								<p>Delivery Charge for any city in Indonesia depends according to the city. You will be able to review the delivery charge on the order preview page before completing your order.</p>
								<h5>What is the charge for same day delivery?</h5>
								<p>Delivery Charge for any city in Indonesia depends according to the city. You will be able to review the delivery charge on the order preview page before completing your order.</p>
								<h5>What is the charge for same day delivery?</h5>
								<p>Delivery Charge for any city in Indonesia depends according to the city. You will be able to review the delivery charge on the order preview page before completing your order.</p>
								
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearside"></div>
		</div>
	</div>
	
	<div class="clearfix"></div>
	<?php //print_r($add_on); ?>
		
	<div class="modal fade commonmodal" id="myModal" tabindex="-1" role="dialog" style="display: none;">
	  <div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
			<h3 class="mo-gift">Add Gift</h3>

	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>

	      	<div class="modal-body scr-11" style="overflow: hidden; outline: currentcolor none medium;" tabindex="5000">
				<ul class="by_flwr">
					<?php foreach($add_on as $adon){ ?>

					<li class="chk chk1" id="<?php echo $adon['id'];?>">
						<label class="check_main">
							<a class="uncheckcheckBox" onclick="add_on_item('<?php echo $adon['id'];?>','Active')" id="pluse_img_<?php echo $adon['id'];?>">
								<img id="changer" class="changer" src="<?php echo base_url();?>webadmin/front/images/addon_unchecker.png" style="height:20px; width:20px;" alt="uncheck">
							</a>
							<a class="uncheckcheckBox" style="display:none;" onclick="add_on_item('<?php echo $adon['id'];?>','Inactive')" id="singh_img_<?php echo $adon['id'];?>">
								<img id="changer" class="changer" src="<?php echo base_url();?>webadmin/front/images/addon_checker.png" style="height:20px; width:20px;" alt="uncheck">
							</a>
							
						</label>
						<span class="img">
							<img src="<?php echo base_url().'img.php?img=addon/'.$adon['image'];?>&amp;mode=cm&amp;w=151&amp;h=165" alt="<?php echo $adon['addon_name'];?>">
						</span>
						<div class="name col-xs-12"><?php echo $adon['addon_name'];?><p class="price">$ <?php echo $adon['addon_price'];?></p></div>
					</li>

				<?php }
				$item_slug = $this->input->get('sl');
				$item_id = perticularFlied('tbl_item','id',array('item_slug'=>$item_slug,'status'=>'active','is_delete'=>'1'))[0];
				 ?>

				<input type="hidden" name="" id="sub_item_id" value="<?php echo $item_id['id'];?>">

				</ul>                            
				<div class="fieldrow text-right">
					<button id="thnk" class="thnku " data-dismiss="modal" aria-label="Close" onclick="add_to_cart()">No Thanks</button>
					<!--<button class="cbttn continuepopup update" href="www.google.com" id="finaladdons">Add to Cart</button>-->
					<a id="finaladdons" class="cbttn continuepopup update" href="<?php echo base_url();?>" onclick="add_to_cart()">Add to Cart</a>
				</div>
	     	</div>
	    </div>
	  </div>
	</div>

  <script type="text/javascript">

  	$(document).ready(function() {
  		$('.datepicker-button').attr('disabled', 'disabled');
  		var current_time = '<?php echo date('H:i:s', time());?>';
  		var current_date = '<?php echo date('Y-m-d');?>';
  		var new_date = '<?php echo date('Y-m-d', strtotime("+1 day"));?>';

  		$('#deliverytime').prop('disabled',true);
  		$('#deliverydate').prop('disabled',true);
  		$('.glyphicon-calendar').attr('disabled',true);
  		double('single');
  		

  		$('.deliverydate').datepicker({
  			theme: 'bootstrap',
  			outputFormat: 'yyyy-MM-dd',
		    
        }).change(function(e) {
       			$('#deliverytime').prop('disabled',false);
       			$('#deliverytime option:eq(0)').attr('selected','selected');
       			$('#default_continue').show();
				$('#continue').hide();
    });

        $('.deliverydate').datepicker('min', get_current_date());

       function get_current_date(){
       	return (current_time > '12:49:59'? new_date : current_date);
       }


  	});

  	function double(elm){
  		/*alert(elm);
  		$.ajax({
				type:"POST",
				url:'<?php //echo base_url('welcome/quality');?>',
				data:{'city_id':elm},
				success: function(data){
				 
			    }
			    
 			});*/
}

  	function select_delivery_date(ct_id){
	$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/select_delivery_date');?>',
				data:{'city_id':ct_id},
				success: function(data){
				 $('#deliverytime').html(data);
				 $('#deliverydate').prop('disabled',false);
				 $('#default_continue').show();
				 $('#continue').hide();
				 deliverydate
			    },
			    beforeSend: function () {
                    $("#dateloader").show();
                    $("#deliverydate").val('');
                },
                complete: function () {
                    $("#dateloader").hide();
                }
 			});

  	}

  function select_delivery_time(time){
  	$('#default_continue').hide();
	$('#continue').show();

  }
  
  function add_val(){
  	var city = $('#city').val();
  	var deliverydate = $('#deliverydate').val();
  	var deliverytime = $('#deliverytime').val();
  	var item_id = $('#item_id').val();
  	var item_name = $('#item_name').val();
  	var chkdouble = $('input[name=chkdouble]:checked').val();
  	var upgrad_option = $('input[name=checkvase]:checked').val();
  	if(upgrad_option=='glass_add'){
  		var glass_add = $('#add_glass').val();

  	}else{
  		var glass_add = '';

  	}
  	

	var the_quantity = '';
	var the_quantity_description = '';
  	if(chkdouble=='double'){
  		var the_quantity = 'double';
  		var the_quantity_price = $('#double_the_quantity').val();
		var the_quantity_description = $('#double_the_quantity_description').val();
  	  


  	}else{
  		var the_quantity = 'single';
  		var the_quantity_price = $('#as_shown').val();
  		var the_quantity_description = $('#as_shown_description').val();


  	}


  	  		$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/add_val');?>',
				data:{'the_quantity':the_quantity,'the_quantity_price':the_quantity_price,'the_quantity_description':the_quantity_description,'glass_add':glass_add,
				'city':city,'deliverydate':deliverydate,'deliverytime_id':deliverytime,'item_id':item_id,'item_name':item_name},
				success: function(data){
				 
			    }
			    
 			});
  }

function add_on_item(id,st){
	//alert(st);
	var item_id = $('#sub_item_id').val();

	$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/add_on_item');?>',
				data:{'add_on_id':id,'item_id':item_id,'status':st},
				success: function(data){
					if(data==1){
						$('#pluse_img_'+id).hide();
						$('#singh_img_'+id).show();

					}else{
						$('#singh_img_'+id).hide();
						$('#pluse_img_'+id).show();

					}
		}
	});


	}


 function add_to_cart(){
 	var url = '<?php echo base_url('cart');?>';
 	$.ajax({
				type:"POST",
				url:'<?php echo base_url('welcome/add_to_cart');?>',
				data:{'add_on_id':''},
				success: function(data){
					//alert(data);
				window.location.href = url; 
					
		}
	});

	event.preventDefault();

 }

  </script>
<?php $this->load->view('front/footer.php'); ?>
