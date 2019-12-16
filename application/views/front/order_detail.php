<?php $this->load->view('front/header-top.php'); ?>
<title>Saesha Flowers | Global Florist Delivering Fresh Flowers</title>
<meta name=""/>
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
	
	.carttab .nav-tabs> li {
		margin: 0;
	}
	
	.carttab .nav-tabs> li> a {
		border: none !important;
		background-color: none;
		padding: 10px 25px 0px 0px;
		font-size: 24px;
		margin: 0;
		cursor: default;
		color: #666563;
		border-radius: 0;
		-moz-border-radius: 0;
		-webkit-border-radius: 0;
		line-height: 38px;
	}
	
	.carttab .nav-tabs> li> a span {
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
	
	.carttab .nav-tabs> li.active> a {
		color: #ed8323;
	}
	
	.carttab .nav-tabs> li> a:hover,
	.carttab .nav-tabs> li> a:focus {
		background: transparent !important;
	}
	
	.carttab .nav-tabs> li.active> a span {
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
		border: none;
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
		background: #ed8323;
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
		border: 1px solid #c0c0c0;
		border-radius: 5px;
	}
	
	.flap_btn {
		float: left;
		margin: 0px 0 0 20px;
		left: 0px;
		top: 0px;
	}
	
	.pmtcart_box {
		width: 100%;
		float: left;
		margin-bottom: 0px;
	}
	
	.txt_left {
		text-align: left !important;
		padding-left: 20px;
		padding-right: 20px;
	}
	
	.pd_left_tit {
		width: 100%;
		font-size: 20px;
		color: #fff;
		font-weight: normal;
		text-align: center;
		background: #ed8323;
		padding: 6px;
	}
	
	.pd_img {
		border-radius: 0px;
		border-color: #dddddd;
		padding: 20px;
	}
	
	input.delv_slct {
		width: 100%;
		height: 40px;
		line-height: 40px;
		cursor: auto;
		border: 1px solid #9a9a9a;
		font-size: 14px;
		color: #4b4b4a;
		background-image: none;
		background-repeat: no-repeat;
		background-position: 95% 50%;
		width: 100%;
		padding: 10px 0px 10px 6px;
		appearance: none;
		-moz-appearance: none;
		-webkit-appearance: none;
		border-radius: 0;
		margin-bottom: 10px;
	}
	
	textarea.delv_slct {
		width: 100%;
		height: 60px;
		line-height: 20px;
		cursor: auto;
		border: 1px solid #9a9a9a;
		font-size: 14px;
		color: #4b4b4a;
		background-image: none;
		background-repeat: no-repeat;
		background-position: 95% 50%;
		width: 100%;
		padding: 10px 0px 10px 6px;
		appearance: none;
		-moz-appearance: none;
		-webkit-appearance: none;
		border-radius: 0px;
		margin-bottom: 10px;
	}
	
	select.delv_slct {
		height: 40px;
		cursor: pointer;
		border: 1px solid #9a9a9a;
		font-size: 14px;
		color: #4b4b4a;
		background-image: url(<?php echo base_url();
		?>webadmin/front/images/droparrow2.png);
		background-repeat: no-repeat;
		background-position: 95% 50%;
		width: 100%;
		padding: 7px 7px;
		appearance: none;
		-moz-appearance: none;
		-webkit-appearance: none;
		border-radius: 0;
		margin-bottom: 10px;
	}
	
	select.delv_slct option {
		color: #636363;
	}
	
	.br_bt {
		border-bottom: 1px solid #ececec;
		padding: 13px 0 16.6px 0;
		font-size: 14px;
		color: #666;
	}
	
	.br_bt a {
		color: #666;
		float: right;
	}
	
	.plush_view {
		color: #ed8323;
		float: left;
		margin: 10px 0 0;
		padding: 0 0 0 25px;
		background: url(<?php echo base_url();
		?>webadmin/front/images/icon_plush.png) left top no-repeat;
		cursor: pointer;
	}
	
	.detailaccor {
		padding: 20px 0 0;
		display: none;
	}
</style>
<?php $this->load->view('front/header-bottom.php'); ?>
<main itemscope itemtype="http://schema.org/Service">
	<meta itemprop="serviceType" content="Gifting"/>
	<div id="content-messages" class="content-messages errorMessage" style=";display:none;">
		<ul></ul>
	</div>
	<div itemscope itemtype="https://schema.org/BreadcrumbList" id="product-breadcrumb">
		<nav data-ga-category="MainContent" id="breadcrumbs" class="productnav product-wrapper" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
			<div class="breadcrumb-wrapper">
				<a itemprop="item name" class="navmenu" href="<?php echo base_url();?>">Home<meta itemprop="position" content="1"/></a>
				<i class="material-icons breadcrumb-icons">keyboard_arrow_right</i>
				<span class="navmenu">Shopping Cart</span>
			</div>
		</nav>
	</div>

	<?php //echo '<pre>'; print_r($this->session->all_userdata());?>
	<div class="row@@@@" itemscope itemtype="" data-ga-category="MainContent">

		<div class="carttab col-xs-12">
			<ul class="nav nav-tabs" role="tablist">
				<li class="active"><a href="#!" data-toggle="tab"><span>1</span>Shopping Cart</a>
				</li>
				<li><a href="#!" data-toggle="tab"><span>2</span>Delivery & Payment</a>
				</li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane carttab active" id="deliveryloc">
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-12">
								<div class="pmtcart_box">
									<h2 class="pd_left_tit txt_left">Delivery Details</h2>
									<div class="col-12 thumbnail pd_img">
										<input type="text" class="delv_slct" placeholder="Receiver's Name" name="receiver_name" id="receiver_name" maxlength="100" value="">
										<textarea class="delv_slct" placeholder="Receiver's Address" rows="3" name="receiver_add" id="receiver_add"></textarea>
										<input type="hidden" name="r_country_code1" id="r_country_code1" value="+62">
										<input class="delv_slct" placeholder="Receiver's Mobile No" onkeyup="IsChkNumc(this);" onchange="IsChkNumc(this);" type="text" min="10" maxlength="20" name="r_mobile" id="r_mobile" value="" autocomplete="off">
										<input type="hidden" name="state" id="state" value="Bali ">
										<input type="hidden" name="stategst" id="stategst" value="0">
										<input class="delv_slct" type="text" name="r_city" id="r_city" placeholder="Select City" value="Bali " readonly="">
										<input type="hidden" name="r_area" id="r_area" value="Bali ">
										<div class="row">
											<div class="col-sm-6">
												<input class="delv_slct" placeholder="Indonesia" value="Indonesia" name="r_country" type="text" readonly="">
											</div>
											<div class="col-sm-6">
												<select class="control-form delv_slct" name="location" id="location">
													<option value="">Location Type</option>
													<option value="102">Office</option>
													<option value="103">Home</option>
													<option value="104">Hospital</option>
													<option value="105">School</option>
													<option value="106">Other</option>
												</select>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="pmtcart_box">
									<h2 class="pd_left_tit txt_left">Billing Details</h2>
									<div class="col-12 thumbnail pd_img">
										<input class="delv_slct" type="text" name="b_name" id="b_name" placeholder="Name" value="">
										<input type="hidden" name="b_add" id="b_add" value="others">
										<input type="hidden" name="stategst1" id="stategst1" value="0">
										<input type="hidden" name="b_country_code1" id="b_country_code1" value="">
										<input class="delv_slct" type="text" name="b_city" id="b_city" placeholder="City" value="">
										<div class="col-sm-6">
											<div class="row">
												<select class="control-form delv_slct" name="b_country" id="b_country" style="font-size: 15px;">
													<option value="" disabled="" selected="" style="display: none;">Country</option>
													<optgroup label="">
														<option value="100" style="font-weight:bold; color:black;">Indonesia +62</option>
													</optgroup>
													<optgroup label="- - - - - - - - - - - - - - - - - - - - - - - -">
														<option value="-1" style="color:black;">Other Country (Not In List)</option>
													</optgroup>
													<optgroup label="- - - - - - - - - - - - - - - - - - - - - - - -">
														<option value="1">Afghanistan +93</option>
														<option value="2">
															Albania +355</option>
														<option value="3">
															Algeria +213</option>
														<option value="4">
															American Samoa +1684</option>
														<option value="5">
															Andorra +376</option>
														<option value="6">
															Angola +244</option>
														<option value="7">
															Anguilla +1264</option>
														<option value="8">
															Antarctica +0</option>
														<option value="9">
															Antigua and Barbuda +1268</option>
														<option value="10">
															Argentina +54</option>
														<option value="11">
															Armenia +374</option>
														<option value="12">
															Aruba +297 </option>
														<option value="13">
															Australia +61 </option>
														<option value="14">
															Austria +43 </option>
														<option value="15">
															Azerbaijan +994 </option>
														<option value="16">
															Bahamas +1242 </option>
														<option value="17">
															Bahrain +973 </option>
														<option value="18">
															Bangladesh +880 </option>
														<option value="19">
															Barbados +1246 </option>
														<option value="20">
															Belarus +375 </option>
														<option value="21">
															Belgium +32 </option>
														<option value="22">
															Belize +501 </option>
														<option value="23">
															Benin +229 </option>
														<option value="24">
															Bermuda +1441 </option>
														<option value="25">
															Bhutan +975 </option>
														<option value="26">
															Bolivia +591 </option>
														<option value="27">
															Bosnia and Herzegovina +387 </option>
														<option value="28">
															Botswana +267 </option>
														<option value="29">
															Bouvet Island +0 </option>
														<option value="30">
															Brazil +55 </option>
														<option value="32">
															Brunei Darussalam +673 </option>
														<option value="33">
															Bulgaria +359 </option>
														<option value="34">
															Burkina Faso +226 </option>
														<option value="35">
															Burundi +257 </option>
														<option value="36">
															Cambodia +855 </option>
														<option value="37">
															Cameroon +237 </option>
														<option value="38">
															Canada +1 </option>
														<option value="39">
															Cape Verde +238 </option>
														<option value="40">
															Cayman Islands +1345 </option>
														<option value="41">
															Central African Republic +236 </option>
														<option value="42">
															Chad +235 </option>
														<option value="43">
															Chile +56 </option>
														<option value="44">
															China +86 </option>
														<option value="45">
															Christmas Island +61 </option>
														<option value="46">
															Cocos (Keeling) Islands +672 </option>
														<option value="47">
															Colombia +57 </option>
														<option value="48">
															Comoros +269 </option>
														<option value="49">
															Congo +242 </option>
														<option value="51">
															Cook Islands +682 </option>
														<option value="52">
															Costa Rica +506 </option>
														<option value="53">
															Cote D'Ivoire +225 </option>
														<option value="54">
															Croatia +385 </option>
														<option value="55">
															Cuba +53 </option>
														<option value="56">
															Cyprus +357 </option>
														<option value="57">
															Czech Republic +420 </option>
														<option value="58">
															Denmark +45 </option>
														<option value="59">
															Djibouti +253 </option>
														<option value="60">
															Dominica +1767 </option>
														<option value="61">
															Dominican Republic +1809 </option>
														<option value="62">
															Ecuador +593 </option>
														<option value="63">
															Egypt +20 </option>
														<option value="64">
															El Salvador +503 </option>
														<option value="65">
															Equatorial Guinea +240 </option>
														<option value="66">
															Eritrea +291 </option>
														<option value="67">
															Estonia +372 </option>
														<option value="68">
															Ethiopia +251 </option>
														<option value="69">
															Falkland Islands +500 </option>
														<option value="70">
															Faroe Islands +298 </option>
														<option value="71">
															Fiji +679 </option>
														<option value="72">
															Finland +358 </option>
														<option value="73">
															France +33 </option>
														<option value="74">
															French Guiana +594 </option>
														<option value="75">
															French Polynesia +689 </option>
														<option value="76">
															French Southern Territories +0 </option>
														<option value="77">
															Gabon +241 </option>
														<option value="78">
															Gambia +220 </option>
														<option value="79">
															Georgia +995 </option>
														<option value="80">
															Germany +49 </option>
														<option value="81">
															Ghana +233 </option>
														<option value="82">
															Gibraltar +350 </option>
														<option value="83">
															Greece +30 </option>
														<option value="84">
															Greenland +299 </option>
														<option value="85">
															Grenada +1473 </option>
														<option value="86">
															Guadeloupe +590 </option>
														<option value="87">
															Guam +1671 </option>
														<option value="88">
															Guatemala +502 </option>
														<option value="89">
															Guinea +224 </option>
														<option value="90">
															Guinea-Bissau +245 </option>
														<option value="91">
															Guyana +592 </option>
														<option value="92">
															Haiti +509 </option>
														<option value="93">
															Heard Island +0 </option>
														<option value="95">
															Honduras +504 </option>
														<option value="96">
															Hong Kong +852 </option>
														<option value="97">
															Hungary +36 </option>
														<option value="98">
															Iceland +354 </option>
														<option value="99">
															India +91 </option>
														<option value="100">
															Indonesia +62 </option>
														<option value="101">
															Iran, Islamic Republic of +98 </option>
														<option value="102">
															Iraq +964 </option>
														<option value="103">
															Ireland +353 </option>
														<option value="104">
															Israel +972 </option>
														<option value="105">
															Italy +39 </option>
														<option value="106">
															Jamaica +1876 </option>
														<option value="107">
															Japan +81 </option>
														<option value="108">
															Jordan +962 </option>
														<option value="109">
															Kazakhstan +7 </option>
														<option value="110">
															Kenya +254 </option>
														<option value="111">
															Kiribati +686 </option>
														<option value="112">
															Korea +850 </option>
														<option value="113">
															Korea, Republic of +82 </option>
														<option value="114">
															Kuwait +965 </option>
														<option value="115">
															Kyrgyzstan +996 </option>
														<option value="116">
															Lao +856 </option>
														<option value="117">
															Latvia +371 </option>
														<option value="118">
															Lebanon +961 </option>
														<option value="119">
															Lesotho +266 </option>
														<option value="120">
															Liberia +231 </option>
														<option value="121">
															Libyan Arab Jamahiriya +218 </option>
														<option value="122">
															Liechtenstein +423 </option>
														<option value="123">
															Lithuania +370 </option>
														<option value="124">
															Luxembourg +352 </option>
														<option value="125">
															Macao +853 </option>
														<option value="126">
															Macedonia +389 </option>
														<option value="127">
															Madagascar +261 </option>
														<option value="128">
															Malawi +265 </option>
														<option value="129">
															Malaysia +60 </option>
														<option value="130">
															Maldives +960 </option>
														<option value="131">
															Mali +223 </option>
														<option value="132">
															Malta +356 </option>
														<option value="133">
															Marshall Islands +692 </option>
														<option value="134">
															Martinique +596 </option>
														<option value="135">
															Mauritania +222 </option>
														<option value="136">
															Mauritius +230 </option>
														<option value="137">
															Mayotte +269 </option>
														<option value="138">
															Mexico +52 </option>
														<option value="139">
															Micronesia +691 </option>
														<option value="140">
															Moldova, Republic of +373 </option>
														<option value="141">
															Monaco +377 </option>
														<option value="142">
															Mongolia +976 </option>
														<option value="143">
															Montserrat +1664 </option>
														<option value="144">
															Morocco +212 </option>
														<option value="145">
															Mozambique +258 </option>
														<option value="146">
															Myanmar +95 </option>
														<option value="147">
															Namibia +264 </option>
														<option value="148">
															Nauru +674 </option>
														<option value="149">
															Nepal +977 </option>
														<option value="150">
															Netherlands +31 </option>
														<option value="151">
															Netherlands Antilles +599 </option>
														<option value="152">
															New Caledonia +687 </option>
														<option value="153">
															New Zealand +64 </option>
														<option value="154">
															Nicaragua +505 </option>
														<option value="155">
															Niger +227 </option>
														<option value="156">
															Nigeria +234 </option>
														<option value="157">
															Niue +683 </option>
														<option value="158">
															Norfolk Island +672 </option>
														<option value="159">
															Northern Mariana Islands +1670 </option>
														<option value="160">
															Norway +47 </option>
														<option value="161">
															Oman +968 </option>
														<option value="162">
															Pakistan +92 </option>
														<option value="163">
															Palau +680 </option>
														<option value="164">
															Palestinian +970 </option>
														<option value="165">
															Panama +507 </option>
														<option value="166">
															Papua New Guinea +675 </option>
														<option value="167">
															Paraguay +595 </option>
														<option value="168">
															Peru +51 </option>
														<option value="169">
															Philippines +63 </option>
														<option value="170">
															Pitcairn +0 </option>
														<option value="171">
															Poland +48 </option>
														<option value="172">
															Portugal +351 </option>
														<option value="173">
															Puerto Rico +1787 </option>
														<option value="174">
															Qatar +974 </option>
														<option value="175">
															Reunion +262 </option>
														<option value="176">
															Romania +40 </option>
														<option value="177">
															Russian Federation +70 </option>
														<option value="178">
															Rwanda +250 </option>
														<option value="179">
															Saint Helena +290 </option>
														<option value="180">
															Saint Kitts and Nevis +1869 </option>
														<option value="181">
															Saint Lucia +1758 </option>
														<option value="182">
															Saint Pierre and Miquelon +508 </option>
														<option value="183">
															Saint Vincent +1784 </option>
														<option value="184">
															Samoa +684 </option>
														<option value="185">
															San Marino +378 </option>
														<option value="186">
															Sao Tome and Principe +239 </option>
														<option value="187">
															Saudi Arabia +966 </option>
														<option value="188">
															Senegal +221 </option>
														<option value="189">
															Serbia and Montenegro +381 </option>
														<option value="190">
															Seychelles +248 </option>
														<option value="191">
															Sierra Leone +232 </option>
														<option value="192">
															Singapore +65 </option>
														<option value="193">
															Slovakia +421 </option>
														<option value="194">
															Slovenia +386 </option>
														<option value="195">
															Solomon Islands +677 </option>
														<option value="196">
															Somalia +252 </option>
														<option value="197">
															South Africa +27 </option>
														<option value="198">
															South Georgia +0 </option>
														<option value="199">
															Spain +34 </option>
														<option value="200">
															Sri Lanka +94 </option>
														<option value="201">
															Sudan +249 </option>
														<option value="202">
															Suriname +597 </option>
														<option value="203">
															Svalbard and Jan Mayen +47 </option>
														<option value="204">
															Swaziland +268 </option>
														<option value="205">
															Sweden +46 </option>
														<option value="206">
															Switzerland +41 </option>
														<option value="207">
															Syrian Arab Republic +963 </option>
														<option value="208">
															Taiwan, Province of China +886 </option>
														<option value="209">
															Tajikistan +992 </option>
														<option value="210">
															Tanzania +255 </option>
														<option value="211">
															Thailand +66 </option>
														<option value="212">
															Timor-Leste +670 </option>
														<option value="213">
															Togo +228 </option>
														<option value="214">
															Tokelau +690 </option>
														<option value="215">
															Tonga +676 </option>
														<option value="216">
															Trinidad and Tobago +1868 </option>
														<option value="217">
															Tunisia +216 </option>
														<option value="218">
															Turkey +90 </option>
														<option value="219">
															Turkmenistan +7370 </option>
														<option value="220">
															Turks and Caicos Islands +1649 </option>
														<option value="221">
															Tuvalu +688 </option>
														<option value="222">
															Uganda +256 </option>
														<option value="223">
															Ukraine +380 </option>
														<option value="224">
															United Arab Emirates +971 </option>
														<option value="225">
															United Kingdom +44 </option>
														<option value="226">
															United States +1 </option>
														<option value="228">
															Uruguay +598 </option>
														<option value="229">
															Uzbekistan +998 </option>
														<option value="230">
															Vanuatu +678 </option>
														<option value="231">
															Venezuela +58 </option>
														<option value="232">
															Viet Nam +84 </option>
														<option value="233">
															Virgin Islands, British +1284 </option>
														<option value="234">
															Virgin Islands, U.s. +1340 </option>
														<option value="235">
															Wallis and Futuna +681 </option>
														<option value="236">
															Western Sahara +212 </option>
														<option value="237">
															Yemen +967 </option>
														<option value="238">
															Zambia +260 </option>
														<option value="239">
															Zimbabwe +263 </option>
													</optgroup>
												</select>
											</div>
										</div>
										<div class="col-sm-5 col-sm-push-1">
											<div class="row">
												<input class="delv_slct" placeholder="Enter Mobile No." name="b_mobile" id="b_mobile" onkeyup="IsChkNumc(this);" onchange="IsChkNumc(this);" type="text" min="10" maxlength="20" value="" autocomplete="off">
											</div>
										</div>
										<input type="email" class="delv_slct" name="b_email" id="b_email" value="test@test.com" readonly="">
										<input type="hidden" name="b_gstin" id="b_gstin" value="">
										<br style="clear:both;">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-12">
								<div class="pmtcart_box">
									<h2 class="pd_left_tit txt_left">Delivery Date</h2>
									<div class="col-12 thumbnail pd_img">
										<input class="delv_slct" type="text" placeholder="Date" name="r_del_date" value="3-Dec-2019 Tue" readonly="">
										<input class="delv_slct" type="hidden" placeholder="Date" value="13 or 14-Feb-2019" readonly="">
										<input type="text" class="delv_slct" id="inputName" placeholder="Time" value="9:00 Hrs - 17:00 Hrs" readonly="">
										<input type="hidden" class="delv_slct" placeholder="Time" value="Anytime before 9 pm(Evening)" readonly="">
										<br style="clear:both;">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="pmtcart_box">
									<h2 class="pd_left_tit txt_left">Card Message</h2>
									<div class="col-12 thumbnail pd_img">
										<?php $card_message = perticularFlied('tbl_card_message','*',array('status'=>'Active'));
										?>

										<select class="control-form delv_slct" name="message_title" id="droptext" onchange="card_msg(this.value)">
											<option value="">Choose an Predefine Message</option>

											<?php
											 foreach($card_message as $card): ?>

											<option value="<?php echo $card['description'];?>">
												<?php echo $card['short_name'];?>
											</option>
										<?php endforeach;?>

										</select>
										<div id="countdown" style="display:none;"></div>

										<div id="defalut_msg_box">
											<textarea maxlength="250" class="delv_slct h_add" rows="4" placeholder="Your Message Maximum 250 Characters...." disabled="disabled"></textarea>
										</div>

										<div id="msg_box" style="display:none;">
										<textarea maxlength="250" class="delv_slct h_add" rows="4" id="card_message" name="msgdesc" placeholder="Your Message Maximum 250 Characters...."></textarea>
										</div>
										<div id="senderIdDiv">
											<input class="delv_slct" type="text" name="sendername" id="theBox" placeholder="Your Signature" value="" autocomplete="off">
										</div>
										<div class="col-lg-12">
											<div class="row">
												<input type="checkbox" class="checkbox fl" id="anonymous_message" name="anonymous_message" value="1"> &nbsp;&nbsp;Send This Message Anonymously <a href="javascript:void(0)" title=" When you check this box, we will protect your privacy and not disclose your name and contact information to the recipient.
We will maintain the anonymous status at a reasonable level to help maintain the surprise. In case the recipient insists, or in the event if the law mandates the disclosure of such information, we will approach you and share your contact information with the sender. If we are not able to get in touch with you, we will disclose the information 3 hours after delivery." style="color:#0552A1;font-size:14px;text-decoration:none;padding-left:10px;">Whats This?</a>
												<br>
												<br>
											</div>
										</div>
										<!--<div class="col-lg-12">
														<div class="row"><img src="https://www.probunga.com/public/templateprobunga/images/secure.jpg" alt="" /></div>
													</div>-->
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-12">
								<div class="pmtcart_box">
									<h2 class="pd_left_tit txt_left">Order Review</h2>
									<div class="col-12 thumbnail pd_img">
										<div class="br_bt">Items <a href="#">1</a>
										</div>
										<div class="br_bt">Amount <a href="#">Rp 630000 / $ 44.10 </a>
										</div>
										<div class="br_bt">Shipping <a href="#">Rp 200000 / $ 14.00 </a>
										</div>
										<div class="br_bt"><b>Total <a href="#">Rp 830000 / $ 58.10 </a></b>
										</div>
										<a class="plush_view accordbtn">View Details</a>
										<div class="col-xs-12 detailaccor">
											<div class="prodid">
												<p>Product Id: #32442<br><b>Always For You Product Name</b>
												</p><br>
												<div style="float: left; width: 39%;">Addons Nme :</div>
												<div>Snickers Chocolate</div><br>
												<div style="float: left; width: 39%;">Option:</div>
												<div>Addons</div><br>
												<div style="float: left; width: 39%;">Price:</div>
												<div>Rp 250000</div>
											</div>
										</div>
										<br style="clear:both;">
									</div>
								</div>
								<div class="">
									<div class="pmtcart_box">
										<h2 class="pd_left_tit txt_left">Payment Mode</h2>
										<div class="col-12 thumbnail pd_img">
											<div class="col-lg-12 br_bt1">
												<div class="row">
													<input type="radio" class="che_box fl" value="17" name="pay"> &nbsp;&nbsp;
													<img src="https://www.probunga.com/public/templateprobunga/images/wu.png" class="allcards" alt="">
												</div>
											</div>
											<div class="col-lg-12 br_bt1">
												<div class="row">
													<input type="radio" class="che_box fl" value="4" name="pay"> &nbsp;&nbsp;
													<img src="https://www.probunga.com/public/templateprobunga/images/c3.png" class="allcards" alt="">
												</div>
											</div>
											<div class="col-lg-12 br_bt1">
												<div class="row">
													<input type="radio" class="che_box fl" value="3" name="pay"> &nbsp;&nbsp;
													<img src="https://www.probunga.com/public/templateprobunga/images/crd1.png" class="allcards" alt="">
												</div>
											</div>
											<div class="col-lg-12">
												<div class="row">
													<button class="cbttn frbtn pmtp_btn" type="button" onclick="return frm_validation();">Place Order <i class="fa fa-forward"></i>
															</button>
												</div>
											</div>
											<br style="clear:both;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




<div class="clearfix"></div>
		
<script> 
$(document).ready(function(){
	$('#droptext').append('<option value="other">Other</option>');
    $(".accordbtn").click(function(){
    $(".detailaccor").slideToggle("slow");
  });


});

 function card_msg(msg){
 	$('#defalut_msg_box').hide();
 	$('#msg_box').show();
 	$('#card_message').val(msg);

 }

</script>

<?php $this->load->view('front/footer.php'); ?>