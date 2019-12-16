</head>
<body data-ng-app="fnp" class="ng-scope">	
	<header data-ga-category="Header">
		<div id="info-toolbar">
		  <div class="header-wrapper">
			<ul>
			  <li class="info-item">
				  <a id="call-info" href="https://wa.me/6281574474913"><img src="<?php echo base_url();?>webadmin/front/assets/images/whatsapp.png" alt="Whatsapp" /> +6281574474913 </a>
			  </li>
			  <li class="info-item"> 
				  <a id="email-info" href="mailto:info@saeshaflowers.com"><img src="<?php echo base_url();?>webadmin/front/assets/images/envelope.png" alt="Email" />  info@saeshaflowers.com</a>
			  </li>
			  <li id="currency" class="loaded">
					<span id="currencybtn">
						<span id="currency-sym" class="curr_aed">SGD</span>
						<i class="material-icons">keyboard_arrow_down</i>
					</span>
					<div class="currency-dropdown" style="display: none;">
						<div class="inner-div">
							<div class="arrows"></div>
							<ul id="currencydropdown">
								<li class="currencyoption" data-currencyuom="AED" data-currencyvalue="AED2.7100">
									<a href="javascript:void(0)">AED-United Arab Dirham</a>
								</li>
								<li class="currencyoption" data-currencyuom="AUD" data-currencyvalue="AUD1.0501">
									<a href="javascript:void(0)">AUD-Australian Dollar</a>
								</li>
								<li class="currencyoption" data-currencyuom="EUR" data-currencyvalue="EUR0.6501">
									<a href="javascript:void(0)">EUR- Euro</a>
								</li>
								<li class="currencyoption" data-currencyuom="CAD" data-currencyvalue="CAD0.9600">
									<a href="javascript:void(0)">CAD-Canadian Dollar</a>
								</li>
								<li class="currencyoption" data-currencyuom="CNY" data-currencyvalue="5.0301">
									<a href="javascript:void(0)">CNY-Chinese Yen</a>
								</li>
								<li class="currencyoption" data-currencyuom="GBP" data-currencyvalue="GBP0.5900">
									<a href="javascript:void(0)">GBP - British Pound</a>
								</li>
								<li class="currencyoption" data-currencyuom="HKD" data-currencyvalue="">
									<a href="javascript:void(0)">HKD-Hongkong Dollar</a>
								</li>
								<li class="currencyoption" data-currencyuom="IDR" data-currencyvalue="">
									<a href="javascript:void(0)">IDR-Indonesia Rupiah</a>
								</li>
								<li class="currencyoption" data-currencyuom="INR" data-currencyvalue="₹50.5301">
									<a href="javascript:void(0)">INR- Indian Rupees</a>
								</li>
								<li class="currencyoption" data-currencyuom="MYR" data-currencyvalue="MYR3.0100">
									<a href="javascript:void(0)">MYR-Malaysian Ringgit</a>
								</li>
								<li class="currencyoption" data-currencyuom="IDR" data-currencyvalue="">
									<a href="javascript:void(0)">OMR-Omani Rial</a>
								</li>
								<li class="currencyoption" data-currencyuom="SGD" data-currencyvalue="S$1.0000">
									<a href="javascript:void(0)">SGD-Singapore Dollar</a>
								</li>
								<li class="currencyoption" data-currencyuom="IDR" data-currencyvalue="">
									<a href="javascript:void(0)">SAR-Saudi Arabian Riyal</a>
								</li>
							</ul>
						</div>
					</div>
				  </li>
			</ul>
		  </div>
		</div>
		<div id="maintoolbar">
		  <div class="header-wrapper">
			<div id="fnplogo" class="left-side" > 
				<a href="<?php echo base_url();?>" target="_self" data-ga-title="Logo"> 
					<img src="<?php echo base_url();?>webadmin/front/assets/images/logo.png" alt="Online Flower Delivery - Saesha Flowers"> 
				</a> 
			</div>
			<form class="searchfrm left-side" action="" id="searchform">
			  <input type="hidden" value="sgp"  name="FNP_CURRENT_CATALOG_ID" id="FNP_CURRENT_CATALOG_ID" />
			  <input type="search" placeholder="Search flowers, cakes, gifts etc." oninput="triggerCategoryHints(this)" onblur="hideSearchHints(this, event)" onfocus="triggerCategoryHints(this)" name="qs" id="fnpsearch" value="" autocomplete="off">
			  <i class="material-icons search-clear-pin" style="display: none;">close</i>
			  <button id="searchbtn" data-ga-title="Search" class="searchFormButton"><i class="material-icons">search</i></button>
			</form>

			<div id="searchhintlistdiv">
			  <p id="searchhintlistlabel"><span class="material-icons">trending_up</span></p>
			  <ul id="searchhintlist">
			  </ul>
			</div>
			<ul id="infotools" class="right-side">
			  <li id="otherOptions"></li>
			  <li id="help">
				  <button id="help" title="Help">
					  <span class="cart-icon"><i class="material-icons">info</i></span>
					  <span class="cart-icon">Help</span> 
				  </button>
			  </li>

			  <li id="corporate">
				<button id="help" title="Corporate"> <span class="cart-icon"><i class="material-icons">card_travel</i></span> <span class="cart-icon">Corporate</span> </button>
			  </li>

			  <li id="cart">
				<button id="cartbtn" title="View Cart"> <span class="cart-icon"><i class="material-icons">shopping_cart</i></span> <span class="cart-icon">Cart</span> <span id = "cartCount" class="cart-hide"></span>
				</button>
				<div id="cartpanel" style="display: none;">
					<div id="viewcart">
						<div class="arrow"></div>
						<div class="cart-section">
							<div class="cart-heading">
								My Cart <a onclick="closeCart();"><i class="material-icons">close</i></a>
							</div>
							<div id="cartSummaryId">
								<div class="empty-cart">
									<div class="empty-content">
										<i class="material-icons">shopping_cart</i>
										<?php if(count($this->cart->contents())==0){?>
										<p>Your cart is empty</p>
										<!-- <span>But it does not have to be.</span> -->
									<?php }else{ ?>
										<p>
										<a href="<?php echo base_url('cart/');?>">You have <?php echo count($this->cart->contents());?> item in your cart</a></p>
									<?php } ?>
									</div>
								</div>
							</div>
							<div class=" securefooterwrapper">
								<div id="youmayalsolike" class="columns"></div>
							</div>
						</div>
					</div>
				</div>
				
			  </li>


			  <?php if($this->session->userdata('email_id')!=''){ ?>
			   <li id="account">
				<button id="accountbtn" title="">
				<span><i class="material-icons">account_circle</i></span> 
				<span class="tempspan"> <span>Account</span>
				 </span>
				 <span id="user-name" ng-bind="app.fullname"></span>
				</button>
				<div id="account-dropdown">
				  <div class="inner-div">
					<div class="arrows"></div>
					<ul id="account-list">
					  <li id="guest-li"> <i class="material-icons">account_circle</i>
					  	<?php echo ($this->session->userdata('full_name') !=''? $this->session->userdata('full_name'):'Hi Guest');?>
					  	 
					  	<span id="login-link"></li>
					  <li><a href="#">My Profile</a></li>
					  <li><a id="trackorder" href="info/contact-usfe8f.html?axn=track-order">Track Order</a></li>
					  <li><a href="#">My Orders</a></li>
					  <li><a href="#">Address Book</a></li>
					  <li><a href="#">Change Password</a></li>
					  <li><a href="<?php echo base_url('welcome/user_logout');?>">Logout</a></li>
					</ul>
				  </div>
				</div>
			  </li>
			<?php }else{?>
				<li id="account">
				<a href="<?php echo base_url('login');?>">
			  	<button id="" title="Login to manage your account">
				<span><i class="material-icons">account_circle</i></span> 
				<span class="tempspan"> <span>Login</span>
				 </span>
				 <span id="user-name" ng-bind="app.fullname"></span>
				</button> 
			</a>
			  </li>
			<?php } ?>
			</ul>
			<!-- <div id="login-message">
			  <div class="header-arrows"></div>
			  <span> Logged in successfully. Explore your account here. </span> </div> -->
		  </div>
		</div>
		<!-- <div id="commondialogs">
		  <div class="page-wrap row" data-ng-controller="NewLoginCntrl as app" data-ga-category="Account_socialLogin">
			<div class="columns">
			  <div class="row" data-ng-cloak>
				<div class="columns">
				  <h4 class="signtitle" data-ng-bind="app.logintitle">Login / signup</h4>
				</div>
			  </div>
			  <div class="row">
				<div class="loginsocial medium-5 columns">
				  <div>
					<form class="fbtextalign" method="post" action="https://www.fnp.sg/control/facebookRedirect">
					  <button class="facebookbtn" data-ga-title="FB"></button>
					  <input type="hidden" name="DONE_PAGE" value="https://www.fnp.sg/" />
					</form>
					<form class="googletextalign" method="post" action="https://www.fnp.sg/control/googleRedirect">
					  <button class="googleplus" data-ga-title="G+"></button>
					  <input type="hidden" name="DONE_PAGE" value="https://www.fnp.sg/" />
					</form>
				  </div>
				</div>
				<div class="columnseparator medium-2 columns"> <span>OR</span> </div>
				<div class="signupfrm medium-5 columns" data-ga-category="Account_ownLogin">
				  <div class="row">
					<div class="medium-7 columns">
					  <div class="row">
						<div class="medium-11 columns">
						<form class="generallogin signfrminpt" method="post" id="loginmodalform" novalidate name="loginmodalform" ng-submit="app.doLogin('www.fnp.sg')">
						  <input type="hidden" name="DONE_PAGE" value="https://www.fnp.sg/" />
						  <input type="hidden" name="create_allow_password" value="true" />
						  <input type="hidden" name="logintoken" value="" />
						  <input type="hidden" name="requirePasswordChange" value="N" ng-if="loginaction=='signup'" />
						  <div id="messages" data-ng-cloak class="logintopalert-box alert-box" data-ng-bind-html="app.errormessage" data-ng-if="app.errormessage"></div>
						  <script>
												document.loginErrors = "";
											</script>
						  <div class="inputdiv" data-ng-if="app.loginaction!='useotp'">
							<div class="inputdiv" data-ng-if="app.loginaction!='useotp'">
							  <md-input-container class="emailinput"> <span class="empty-field" data-ng-if="loginmodalform.USERNAME.$valid || (app.loginaction=='login' && app.errormessage  || app.loginaction=='signup')" ng-click="app.USERNAME=''" >X</span>
								<label class=emaillabel>* Email ID</label>
								<input class="inputdashed" type="email" data-ng-keypress="usernameKeyPressed($event)" data-ng-paste="usernameKeyPressed($event)" ng-change="usernameChange()" id="USERNAME" name="USERNAME" data-ng-class="{'error':loginmodalform.USERNAME.$invalid && loginmodalform.$submitted}" data-ng-model="app.USERNAME" required="required" maxlength="65" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,10}$" data-ng-readonly=" app.loginaction=='forgotpassword'" data-ng-attr-title="{{app.usernametitle}}" data-ng-change="app.forgotpasswordsent=false" />
								<a data-ga-title="Use a different email address" href="javascript:void(0)" class="animate-if differentemailid" ng-if=" (app.loginaction=='login' && app.errormessage || app.loginaction=='login' || app.loginaction=='signup')" ng-click="app.init()">Use different email id</a> </md-input-container>
							  <div data-alert="" class="alert-box alert alert-right" data-ng-if="((loginmodalform.USERNAME.$error.required) && (loginmodalform.$submitted && app.loginaction!='useotp')) || app.checkemail"> Email address is required. </div>
							  <div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="loginmodalform.USERNAME.$error.pattern && loginmodalform.$submitted"> Email ID is not valid. </div>
							</div>
						  </div>
						  <div class="resendOTP fade" data-ng-if="app.loginaction=='useotp'"> <span id="resendotp" ng-click="useotp" data-ng-bind-html="otpResendMsg" ng-class="{'invisible':app.loginaction=='useotp' && !app.resendotp && !app.showResendOtpMsg}"></span> </div>
						  <div class="sendOTP fade" data-ng-if="app.loginaction=='useotp'"> <span id="otpsent" ng-click="useotp" data-ng-bind-html="otpSuccessMsg" ng-class="{'invisible':app.loginaction=='useotp' && !app.otpsent && !app.showOtpMsg}"></span> </div>
						  <div class="inputdiv useotp">
							<input data-ng-keypress="loginmodalform.$setPristine();" ng-focus="app.showOtpMsg = true; app.resendotp = false; app.showResendOtpMsg=false; app.errormessage =false;" ng-blur="app.showOtpMsg = true; app.showResendOtpMsg = false;" class="generateotp  ngshow" data-ng-if="app.loginaction=='useotp'" id="OTP" data-ng-model="app.OTP" name="OTP" autocomplete="off" type="text" maxlength="4" pattern="[0-9]{4}" placeholder="* Enter Code" required/>
							<div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="app.loginaction=='useotp' && loginmodalform.$submitted && loginmodalform.OTP.$error.required"> OTP is required </div>
						  </div>
						  <div data-ng-if="app.loginaction=='useotp'" class="resendotp"> <a href="javascript:void(0)" data-ng-click="app.loginaction = 'useotp';app.resendButton=true;app.resendOTP = true;app.doLogin('www.fnp.sg');app.showOtpMsg = true; app.resendotp=true;app.showResendOtpMsg = true">Resend OTP</a> </div>
						  <div class="inputdiv animate-if" data-ng-if="app.loginaction=='signup'">
							<md-input-container class="emailinput">
							  <label>* Name</label>
							  <input class="inputdashed" type="text" id="USER_FIRST_NAME" name="USER_FIRST_NAME" data-ng-keypress="loginmodalform.$setPristine();" maxlength="100" data-ng-class="{'error':loginmodalform.USER_FIRST_NAME.$invalid && loginmodalform.$submitted}" data-ng-model="app.USER_FIRST_NAME" pattern="[a-zA-Z ]*" ng-focus="app.nameFocused=true" ng-blur="app.nameFocused=false" required="required" />
							  <div data-alert="" class="alert-box alert alert-right" data-ng-if="app.loginaction=='signup' && loginmodalform.USER_FIRST_NAME.$error.required && loginmodalform.$submitted"> Name is required. </div>
							  <div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="!app.nameFocused && loginmodalform.USER_FIRST_NAME.$error.pattern"> Only alphabets allowed </div>
							</md-input-container>
						  </div>
						  <div class="inputdiv telinput animate-if ui-front" data-ng-if="app.loginaction=='signup'" ng-init="app.focused=false">
							<select  tabindex="-1" name="countryCode" data-ng-model="app.countryCode" data-ng-init="app.countryCode=(app.countryCode != null && app.countryCode.length >0) ? app.countryCode : '65'" class="signupcountrycode">
							  <option value="65" title="Singapore ">+65</option>
							  <option value="971" title="United Arab Emirates ">+971</option>
							  <option value="91" title="India ">+91</option>
							  <option value="1" title="USA ">+1</option>
							  <option value="44" title="UK ">+44</option>
							  <option value="92" title="Pakistan ">+92</option>
							  <option value="63" title="Philippines ">+63</option>
							  <option value="966" title="Saudi Arabia ">+966</option>
							  <option value="1" title="Canada ">+1</option>
							  <option value="61" title="Australia ">+61</option>
							  <option value="90" title="Turkey ">+90</option>
							  <option value="49" title="Germany ">+49</option>
							  <option value="961" title="Lebanon ">+961</option>
							  <option value="974" title="Qatar ">+974</option>
							  <option value="94" title="Sri Lanka ">+94</option>
							  <option value="965" title="Kuwait ">+965</option>
							  <option value="962" title="Jordan ">+962</option>
							  <option value="20" title="Egypt ">+20</option>
							  <option value="33" title="France ">+33</option>
							  <option value="968" title="Oman ">+968</option>
							  <option label="---------" disabled="disabled">--------</option>
							  <option value="1" title="Canada ">+1</option>
							  <option value="1" title="USA ">+1</option>
							  <option value="1242" title="Bahamas ">+1242</option>
							  <option value="1246" title="Barbados ">+1246</option>
							  <option value="1264" title="Anguilla ">+1264</option>
							  <option value="1268" title="Antigua &amp; Barbuda ">+1268</option>
							  <option value="1345" title="Cayman Islands ">+1345</option>
							  <option value="1441" title="Bermuda ">+1441</option>
							  <option value="1473" title="Grenada ">+1473</option>
							  <option value="1649" title="Turks &amp; Caicos Islands ">+1649</option>
							  <option value="1664" title="Montserrat ">+1664</option>
							  <option value="1758" title="St. Lucia ">+1758</option>
							  <option value="1787" title="Puerto Rico ">+1787</option>
							  <option value="1809" title="Dominica ">+1809</option>
							  <option value="1809" title="Dominican Republic ">+1809</option>
							  <option value="1868" title="Trinidad &amp; Tobago ">+1868</option>
							  <option value="1869" title="St. Kitts ">+1869</option>
							  <option value="1876" title="Jamaica ">+1876</option>
							  <option value="20" title="Egypt ">+20</option>
							  <option value="212" title="Morocco ">+212</option>
							  <option value="213" title="Algeria ">+213</option>
							  <option value="216" title="Tunisia ">+216</option>
							  <option value="218" title="Libya ">+218</option>
							  <option value="220" title="Gambia ">+220</option>
							  <option value="221" title="Senegal ">+221</option>
							  <option value="222" title="Mauritania ">+222</option>
							  <option value="223" title="Mali ">+223</option>
							  <option value="224" title="Guinea ">+224</option>
							  <option value="226" title="Burkina Faso ">+226</option>
							  <option value="227" title="Niger ">+227</option>
							  <option value="228" title="Togo ">+228</option>
							  <option value="229" title="Benin ">+229</option>
							  <option value="230" title="Mauritius ">+230</option>
							  <option value="231" title="Liberia ">+231</option>
							  <option value="232" title="Sierra Leone ">+232</option>
							  <option value="233" title="Ghana ">+233</option>
							  <option value="234" title="Nigeria ">+234</option>
							  <option value="236" title="Central African Republic ">+236</option>
							  <option value="237" title="Cameroon ">+237</option>
							  <option value="238" title="Cape Verde Islands ">+238</option>
							  <option value="239" title="Sao Tome &amp; Principe ">+239</option>
							  <option value="240" title="Equatorial Guinea ">+240</option>
							  <option value="241" title="Gabon ">+241</option>
							  <option value="242" title="Congo ">+242</option>
							  <option value="244" title="Angola ">+244</option>
							  <option value="245" title="Guinea - Bissau ">+245</option>
							  <option value="248" title="Seychelles ">+248</option>
							  <option value="249" title="Sudan ">+249</option>
							  <option value="250" title="Rwanda ">+250</option>
							  <option value="251" title="Ethiopia ">+251</option>
							  <option value="252" title="Somalia ">+252</option>
							  <option value="253" title="Djibouti ">+253</option>
							  <option value="254" title="Kenya ">+254</option>
							  <option value="255" title="Tanzania ">+255</option>
							  <option value="256" title="Uganda ">+256</option>
							  <option value="257" title="Burundi ">+257</option>
							  <option value="258" title="Mozambique ">+258</option>
							  <option value="260" title="Zambia">+260</option>
							  <option value="261" title="Madagascar ">+261</option>
							  <option value="262" title="Reunion ">+262</option>
							  <option value="263" title="Zimbabwe">+263</option>
							  <option value="264" title="Namibia ">+264</option>
							  <option value="265" title="Malawi ">+265</option>
							  <option value="266" title="Lesotho ">+266</option>
							  <option value="267" title="Botswana ">+267</option>
							  <option value="268" title="Swaziland ">+268</option>
							  <option value="269" title="Comoros ">+269</option>
							  <option value="269" title="Mayotte ">+269</option>
							  <option value="27" title="South Africa ">+27</option>
							  <option value="290" title="St. Helena ">+290</option>
							  <option value="291" title="Eritrea ">+291</option>
							  <option value="297" title="Aruba ">+297</option>
							  <option value="298" title="Faroe Islands ">+298</option>
							  <option value="299" title="Greenland ">+299</option>
							  <option value="30" title="Greece ">+30</option>
							  <option value="31" title="Netherlands ">+31</option>
							  <option value="32" title="Belgium ">+32</option>
							  <option value="33" title="France ">+33</option>
							  <option value="34" title="Spain ">+34</option>
							  <option value="350" title="Gibraltar ">+350</option>
							  <option value="351" title="Portugal ">+351</option>
							  <option value="352" title="Luxembourg ">+352</option>
							  <option value="353" title="Ireland ">+353</option>
							  <option value="354" title="Iceland ">+354</option>
							  <option value="356" title="Malta ">+356</option>
							  <option value="357" title="Cyprus South ">+357</option>
							  <option value="358" title="Finland ">+358</option>
							  <option value="359" title="Bulgaria ">+359</option>
							  <option value="36" title="Hungary ">+36</option>
							  <option value="370" title="Lithuania ">+370</option>
							  <option value="371" title="Latvia ">+371</option>
							  <option value="372" title="Estonia ">+372</option>
							  <option value="373" title="Moldova ">+373</option>
							  <option value="374" title="Armenia ">+374</option>
							  <option value="375" title="Belarus ">+375</option>
							  <option value="376" title="Andorra ">+376</option>
							  <option value="377" title="Monaco ">+377</option>
							  <option value="378" title="San Marino ">+378</option>
							  <option value="379" title="Vatican City ">+379</option>
							  <option value="380" title="Ukraine ">+380</option>
							  <option value="381" title="Serbia ">+381</option>
							  <option value="385" title="Croatia ">+385</option>
							  <option value="386" title="Slovenia ">+386</option>
							  <option value="387" title="Bosnia Herzegovina ">+387</option>
							  <option value="389" title="Macedonia ">+389</option>
							  <option value="39" title="Italy ">+39</option>
							  <option value="40" title="Romania ">+40</option>
							  <option value="41" title="Switzerland ">+41</option>
							  <option value="417" title="Liechtenstein ">+417</option>
							  <option value="42" title="Czech Republic ">+42</option>
							  <option value="421" title="Slovak Republic ">+421</option>
							  <option value="43" title="Austria ">+43</option>
							  <option value="44" title="UK ">+44</option>
							  <option value="45" title="Denmark ">+45</option>
							  <option value="46" title="Sweden ">+46</option>
							  <option value="47" title="Norway ">+47</option>
							  <option value="48" title="Poland ">+48</option>
							  <option value="49" title="Germany ">+49</option>
							  <option value="500" title="Falkland Islands ">+500</option>
							  <option value="501" title="Belize ">+501</option>
							  <option value="502" title="Guatemala ">+502</option>
							  <option value="503" title="El Salvador ">+503</option>
							  <option value="504" title="Honduras ">+504</option>
							  <option value="505" title="Nicaragua ">+505</option>
							  <option value="506" title="Costa Rica ">+506</option>
							  <option value="507" title="Panama ">+507</option>
							  <option value="509" title="Haiti ">+509</option>
							  <option value="51" title="Peru ">+51</option>
							  <option value="52" title="Mexico ">+52</option>
							  <option value="53" title="Cuba ">+53</option>
							  <option value="54" title="Argentina ">+54</option>
							  <option value="55" title="Brazil ">+55</option>
							  <option value="56" title="Chile ">+56</option>
							  <option value="57" title="Colombia ">+57</option>
							  <option value="58" title="Venezuela ">+58</option>
							  <option value="590" title="Guadeloupe ">+590</option>
							  <option value="591" title="Bolivia ">+591</option>
							  <option value="592" title="Guyana ">+592</option>
							  <option value="593" title="Ecuador ">+593</option>
							  <option value="594" title="French Guiana ">+594</option>
							  <option value="595" title="Paraguay ">+595</option>
							  <option value="596" title="Martinique ">+596</option>
							  <option value="597" title="Suriname ">+597</option>
							  <option value="598" title="Uruguay ">+598</option>
							  <option value="60" title="Malaysia ">+60</option>
							  <option value="61" title="Australia ">+61</option>
							  <option value="62" title="Indonesia ">+62</option>
							  <option value="63" title="Philippines ">+63</option>
							  <option value="64" title="New Zealand ">+64</option>
							  <option value="65" title="Singapore ">+65</option>
							  <option value="66" title="Thailand ">+66</option>
							  <option value="670" title="Northern Marianas ">+670</option>
							  <option value="671" title="Guam ">+671</option>
							  <option value="672" title="Norfolk Islands ">+672</option>
							  <option value="673" title="Brunei ">+673</option>
							  <option value="674" title="Nauru ">+674</option>
							  <option value="675" title="Papua New Guinea ">+675</option>
							  <option value="676" title="Tonga ">+676</option>
							  <option value="677" title="Solomon Islands ">+677</option>
							  <option value="678" title="Vanuatu ">+678</option>
							  <option value="679" title="Fiji ">+679</option>
							  <option value="680" title="Palau ">+680</option>
							  <option value="681" title="Wallis &amp; Futuna ">+681</option>
							  <option value="682" title="Cook Islands ">+682</option>
							  <option value="683" title="Niue ">+683</option>
							  <option value="686" title="Kiribati ">+686</option>
							  <option value="687" title="New Caledonia ">+687</option>
							  <option value="688" title="Tuvalu ">+688</option>
							  <option value="689" title="French Polynesia ">+689</option>
							  <option value="691" title="Micronesia ">+691</option>
							  <option value="692" title="Marshall Islands ">+692</option>
							  <option value="7" title="Kazakhstan ">+7</option>
							  <option value="7" title="Russia ">+7</option>
							  <option value="7" title="Tajikstan ">+7</option>
							  <option value="7" title="Turkmenistan ">+7</option>
							  <option value="7" title="Uzbekistan ">+7</option>
							  <option value="7880" title="Georgia ">+7880</option>
							  <option value="81" title="Japan ">+81</option>
							  <option value="82" title="Korea South ">+82</option>
							  <option value="84" title="Vietnam ">+84</option>
							  <option value="84" title="Virgin Islands - British ">+1284</option>
							  <option value="84" title="Virgin Islands - US ">+1340</option>
							  <option value="850" title="Korea North ">+850</option>
							  <option value="852" title="Hong Kong ">+852</option>
							  <option value="853" title="Macao ">+853</option>
							  <option value="855" title="Cambodia ">+855</option>
							  <option value="856" title="Laos ">+856</option>
							  <option value="86" title="China ">+86</option>
							  <option value="880" title="Bangladesh ">+880</option>
							  <option value="886" title="Taiwan ">+886</option>
							  <option value="90" title="Turkey ">+90</option>
							  <option value="90392" title="Cyprus North ">+90392</option>
							  <option value="91" title="India ">+91</option>
							  <option value="92" title="Pakistan ">+92</option>
							  <option value="93" title="Afghanistan ">+93</option>
							  <option value="94" title="Sri Lanka ">+94</option>
							  <option value="95" title="Myanmar ">+95</option>
							  <option value="960" title="Maldives ">+960</option>
							  <option value="961" title="Lebanon ">+961</option>
							  <option value="962" title="Jordan ">+962</option>
							  <option value="963" title="Syria ">+963</option>
							  <option value="964" title="Iraq ">+964</option>
							  <option value="965" title="Kuwait ">+965</option>
							  <option value="966" title="Saudi Arabia ">+966</option>
							  <option value="967" title="Yemen">+967</option>
							  <option value="968" title="Oman ">+968</option>
							  <option value="969" title="Yemen">+969</option>
							  <option value="970" title="Palestine">+970</option>
							  <option value="971" title="United Arab Emirates ">+971</option>
							  <option value="972" title="Israel ">+972</option>
							  <option value="973" title="Bahrain ">+973</option>
							  <option value="974" title="Qatar ">+974</option>
							  <option value="975" title="Bhutan ">+975</option>
							  <option value="976" title="Mongolia ">+976</option>
							  <option value="977" title="Nepal ">+977</option>
							  <option value="98" title="Iran ">+98</option>
							  <option value="993" title="Turkmenistan ">+993</option>
							  <option value="994" title="Azerbaijan ">+994</option>
							  <option value="996" title="Kyrgyzstan ">+996</option>
							</select>
							<md-input-container class="emailinput mobilelabel">
							  <label class="mobilel">* Mobile</label>
							  <input class="number" type="tel" autocomplete="off" data-ng-keypress="loginmodalform.$setPristine()" data-ng-class="{'error':(loginmodalform.CUSTOMER_MOBILE_CONTACT.$invalid && loginmodalform.$submitted)}" id="CUSTOMER_MOBILE_CONTACT" name="CUSTOMER_MOBILE_CONTACT" data-ng-model="app.CUSTOMER_MOBILE_CONTACT" data-ng-maxlength="{{app.countryCode=='971'?15:15}}" data-ng-minlength="{{app.countryCode=='971'?8:7}}" pattern="[0-9]{1,15}" ng-focus="app.focused=true" ng-blur="app.focused=false" required/>
							  <div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="loginmodalform.$submitted && loginmodalform.CUSTOMER_MOBILE_CONTACT.$error.required"> Phone is required </div>
							  <div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="!app.focused && (loginmodalform.CUSTOMER_MOBILE_CONTACT.$error.minlength || loginmodalform.CUSTOMER_MOBILE_CONTACT.$error.maxlength || loginmodalform.CUSTOMER_MOBILE_CONTACT.$error.pattern)"> Phone number is invalid </div>
							</md-input-container>
						  </div>
						  <div class="inputdiv animate-if" data-ng-if="app.loginaction=='login'">
							<md-input-container class="emailinput">
							  <input class="inputdashed commonpassword" autocomplete="off" title="Password should contain atleast 6 characters and one digit." type="password" maxlength="20" id="password" data-ng-class="{'error':loginmodalform.PASSWORD.$invalid && loginmodalform.$submitted}" data-ng-model="app.PASSWORD" name="PASSWORD" ng-keypress="app.errormessage=false" required />
							  <label class=emaillabel>* Password</label>
							</md-input-container>
							<div data-alert="" class="alert-box alert alert-right" data-ng-if="loginmodalform.PASSWORD.$error.required && loginmodalform.$submitted"> Password is required. </div>
							<div data-ng-if="app.showpasswordhint || (loginmodalform.PASSWORD.$error.pattern && loginmodalform.$submitted)" class="alert-box info alert-left"> Password should contain atleast 6 characters and one digit. </div>
						  </div>
						  <div class="inputdiv animate-if" data-ng-if="app.loginaction=='signup'">
							<md-input-container class="emailinput">
							  <label>* Create a password</label>
							  <input class="inputdashed commonpassword" autocomplete="off" title="Password should contain atleast 6 characters and one digit." type="password" maxlength="15" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z!#$%&'()*+,-./:;<=>?@[\]^_`{|}~\d]{6,60}$" id="signUpPassword" data-ng-class="{'error':loginmodalform.signUpPassword.$invalid && loginmodalform.$submitted}" data-ng-model="app.signUpPassword" name="signUpPassword" ng-focus="app.focused=true" ng-blur="app.focused=false" required />
							  <span class="passwordalert"> Your password must be at least 6 characters & 1 numeric(0-9)</span> </md-input-container>
							<div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="loginmodalform.$submitted && loginmodalform.signUpPassword.$error.required"> Password is required </div>
							<div data-ng-cloak data-alert="" class="alert-box alert alert-right" data-ng-if="!app.focused && loginmodalform.$submitted && loginmodalform.signUpPassword.$error.pattern"> Password is invalid </div>
						  </div>
						  <div data-ng-if="forgotpasswordsent"  class="sendmail"> <span class = 'password-sent' id='passwordsent'>We have shared a new password on above mail id.</span> </div>
						  <div data-ng-if="forgotpasswordsent"  class="notreceivemail"> <span class = 'mailnotreceived'>Not Received?</span> <span data-ng-if="showaction == 'DeactiveResend'" class = 'forgotpasswordresendtimer'>Resend({{countdown}}s)</span> <a data-ng-if="showaction == 'ActiveResend'" data-ng-click="app.resendForgotPassword()" class = 'activeresendtimer'>Resend</a> </div>
						  <a data-ga-title="Forgot Password?" class="socialtxt2 inputchanger forgotpassword " id="forgotpassword" data-ng-click = "app.openreveal();"  data-ng-if="app.loginaction=='login' && !forgotpasswordsent">Forgot Password?</a>
						  <div  class="reveal-modal pop-up-msg-login-desk show_login_form" data-reveal aria-hidden="true" data-options="closeOnBackgroundClick:false"> <span class = "popupspan show_login_form">We will be sending a new password to your registered email ID</span>
							<div class ="revealbutton show_login_form"> <a class="login-cancel show_login_form" data-ng-click="app.revealclose();">Cancel</a> <a class="forgotpassword-send show_login_form" data-ng-click="app.loginaction = 'forgotpassword';app.doLogin('www.fnp.sg');">Ok</a> </div>
						  </div>
						  <button data-ga-element="ga-element" type="submit" class="loginbtn" id="frgtlinksbmt" value="CONTINUE" name="loginbtn"  data-ng-click="app.resendOTP = false;app.resendButton=false;" data-ga-title='CONTINUE' > <span data-ng-disabled="loginmodalform.$invalid || !app.enablesubmit" class="content-text">CONTINUE</span> <span class="progress-bar-section"> <span class="progress-bar-inner-section" style="width: 100%; opacity: 1;"></span> </span> </button>
						  <a data-ng-if="app.loginaction=='login'" class="loginwithoutpassword" data-ng-click="app.errormessage=false;app.loginaction = 'intiateotp';app.doLogin('www.fnp.sg');app.showOtpMsg = true; app.showResendOtpMsg=false; app.resendotp = false; loginmodalform.$setPristine();">LOGIN WITHOUT PASSWORD</a>
						  </div>
						  <span id="msg" class="alert-box alert radius" style="display:none"></span> <span class="socialtxt1 delayshow" data-ng-if="app.forgotpasswordsent"> Did not receive temporary password yet? <a href="javascript:void(0)" class="signuplink" data-ng-click="newForgotPassword()">Resend</a> </span>
						</form>
					  </div>
					  <div class="medium-1 columns"> &nbsp; </div>
					</div>
				  </div>
				  <div class="medium-5 columns"> &nbsp; </div>
				</div>
			  </div>
			</div>
			<a class="close-reveal-modal" id="loginmodalclose" href="javascript:void(0);" aria-label="Close">&times;</a> </div>
		</div> -->
		<div id="cartpanel"> </div>
		<nav id="navmenubar">
			<div class="header-wrapper">
				<ul>
					<?php $data_cat = perticularFlied('tbl_category','id,category_slug,category_name',array('status'=>'active'));
					
					foreach($data_cat as $cat):?>
						<li><a id="#tabs-1<?php echo $cat['id']; ?>" href="<?php echo base_url('category?sl='.$cat['category_slug']);?>"><?php echo $cat['category_name'];?></a></li>

					<?php endforeach;?>

					<li><a id="#tabs-7" href="#">By Price</a></li>
						
				</ul>		
				<div id="tabs-11" data-ga-category="Halloween_SubTab">
				  <div class="sub-navmenubar">
					<section>
					  <ul>
						<li class="ui-corner-left"><a href="#">All Flowers</a></li>
						<?php $data_sub_cat_rose = perticularFlied('tbl_sub_categoery','id,cat_id,slug,sub_cat_name',array('cat_id'=>'1','status'=>'active','is_delete'=>'1'));
					
							foreach($data_sub_cat_rose as $sub_rose){?>
								 <li class="ui-corner-left"><a href="<?php echo base_url('flowers?sl='.$sub_rose['slug']);?>"><?php echo $sub_rose['sub_cat_name'];?></a></li>

							<?php } ?>
					  </ul>
					</section>
				  </div>
				</div>
				<div id="tabs-12" data-ga-category="Birthday_SubTab">
				  <!--<h4 id="hamburgermenutitle">We're sure you will walk out with the best gift</h4>-->
				  <div class="sub-navmenubar">
					<section>
					  <ul>
					  	<?php $data_sub_cat_rose = perticularFlied('tbl_sub_categoery','id,cat_id,slug,sub_cat_name',array('cat_id'=>'2','status'=>'active','is_delete'=>'1'));
					
							foreach($data_sub_cat_rose as $sub_rose){?>
								 <li class="ui-corner-left"><a href="<?php echo base_url('flowers-type?sl='.$sub_rose['slug']);?>"><?php echo $sub_rose['sub_cat_name'];?></a></li>

							<?php } ?>
						
					  </ul>
					</section>
				  </div>
				</div>	
				<div id="tabs-13" data-ga-category="Flowers_SubTab">
				  <!--<h4 id="hamburgermenutitle">We're sure you will walk out with the best gift</h4>-->
				  <div class="sub-navmenubar">
					<section>
					  <ul>
					  	<li class="ui-corner-left"><a href="<?php echo base_url('category?sl=flower-combos-indonesia');?>">Flower Combos</a>
						<?php $data_sub_cat_rose = perticularFlied('tbl_sub_categoery','id,cat_id,slug,sub_cat_name',array('cat_id'=>'3','status'=>'active','is_delete'=>'1'));
					
							foreach($data_sub_cat_rose as $sub_rose){?>
								 <li class="ui-corner-left"><a href="<?php echo base_url('flower-combos?sl='.$sub_rose['slug']);?>"><?php echo $sub_rose['sub_cat_name'];?></a></li>

							<?php } ?>
					  </ul>
					</section>
				  </div>
				</div>
				<div id="tabs-14" data-ga-category="Sympathy_SubTab">
				  <div class="sub-navmenubar">
					<section>
					  <ul>
						<li class="ui-corner-left"><a href="#">Plants</a></li>
						<?php $data_sub_cat_rose = perticularFlied('tbl_sub_categoery','id,cat_id,slug,sub_cat_name',array('cat_id'=>'4','status'=>'active','is_delete'=>'1'));
					
							foreach($data_sub_cat_rose as $sub_rose){?>
								 <li class="ui-corner-left"><a href="<?php echo base_url('plants?sl='.$sub_rose['slug']);?>"><?php echo $sub_rose['sub_cat_name'];?></a></li>

							<?php } ?>

						<!-- <li class="ui-corner-left"><a href="#">Lucky Bamboo Plants</a></li> -->
					  </ul>
					</section>
				  </div>
				</div>
				<div id="tabs-15" data-ga-category="Congratulations_SubTab">
				  <div class="sub-navmenubar">
					<section>
					  <ul>

					  	<?php $data_sub_cat_rose = perticularFlied('tbl_sub_categoery','id,cat_id,slug,sub_cat_name',array('cat_id'=>'5','status'=>'active','is_delete'=>'1'));
					
							foreach($data_sub_cat_rose as $sub_rose){?>
								 <li class="ui-corner-left"><a href="<?php echo base_url('occasion?sl='.$sub_rose['slug']);?>"><?php echo $sub_rose['sub_cat_name'];?></a></li>

							<?php } ?>

						
					  </ul>
					</section>
				  </div>
				</div>
				<div id="tabs-16" data-ga-category="Cakes_SubTab">
				  <!--<h4 id="hamburgermenutitle">We're sure you will walk out with the best gift</h4>-->
				  <div class="sub-navmenubar">
					<section>
					  <ul>
					  	<?php $data_sub_cat_rose = perticularFlied('tbl_sub_categoery','id,cat_id,slug,sub_cat_name',array('cat_id'=>'6','status'=>'active','is_delete'=>'1'));
					
							foreach($data_sub_cat_rose as $sub_rose){?>
								 <li class="ui-corner-left"><a href="<?php echo base_url('gift?sl='.$sub_rose['slug']);?>"><?php echo $sub_rose['sub_cat_name'];?></a></li>

							<?php } ?>

						<!-- <li class="ui-corner-left"><a href="#">Gifts for New Born</a></li>
						<li class="ui-corner-left"><a href="#">Fruit Baskets</a></li>
						<li class="ui-corner-left"><a href="#">Chocolates</a></li>
						<li class="ui-corner-left"><a href="#">Tedy Bears</a></li>
						<li class="ui-corner-left"><a href="#">Hampers</a></li> -->
					  </ul>
					</section>
				  </div>
				</div>
				
				<div id="tabs-7" data-ga-category="Plants_SubTab">
				 
				  <div class="sub-navmenubar">
					<section>
					  <ul>
						<li class="ui-corner-left"><a href="<?php echo base_url('by-price?start=0&end=30');?>">Below $ 30</a></li>
						<li class="ui-corner-left"><a href="<?php echo base_url('by-price?start=30&end=60');?>">Between $ 30 to 60 </a></li>
						<li class="ui-corner-left"><a href="<?php echo base_url('by-price?start=60&end=90');?>">Between $ 60 to 90 </a></li>
						<li class="ui-corner-left"><a href="<?php echo base_url('by-price?start=90&end=9000000');?>">Above $ 90</a></li>
					  </ul>
					</section>
				  </div>
				</div>	
				
				<div id="tabs-10" data-ga-category="Occasions_SubTab">
				  <h4 id="hamburgermenutitle">We're sure you will walk out with the best gift</h4>
				  <div class="sub-navmenubar">
					<section>
					  <h3>Everyday Occasions</h3>
					  <ul>
						<li class="ui-corner-left"><a href="#">Birthday</a></li>
						<li class="ui-corner-left"><a href="#">Anniversary</a></li>
						<li class="ui-corner-left"><a href="#">Congratulations</a></li>
						<li class="ui-corner-left"><a href="#">Love & Romance</a></li>
						<li class="ui-corner-left"><a href="#">Get Well Soon</a></li>
						<li class="ui-corner-left"><a href="#">Wedding</a></li>
						<li class="ui-corner-left"><a href="#">I'm Sorry</a></li>
						<li class="ui-corner-left"><a href="#">Thank You</a></li>
						<li class="ui-corner-left"><a href="#">New Born</a></li>
						<li class="ui-corner-left"><a href="#">Miss You</a></li>
						<li class="ui-corner-left"><a href="#">House Warming</a></li>
						<li class="ui-corner-left"><a href="#">Sympathy N Funeral</a></li>
					  </ul>
					</section>
					<section>
					  <h3>Special Occasions</h3>
					  <ul>
						<li class="ui-corner-left"><a href="#">Men's Day - 19th Nov</a></li>
						<li class="ui-corner-left"><a href="#">Valentine's Day - 14th Feb</a></li>
						<li class="ui-corner-left"><a href="#">Mother's Day - 10th May</a></li>
						<li class="ui-corner-left"><a href="#">Father's Day -  17th June</a></li>
						<li class="ui-corner-left"><a href="#">Teachers Day - 4th Sept</a></li>
						<li class="ui-corner-left"><a href="#">Boss Day - 16th Oct</a></li>
					  </ul>
					</section>
					<section>
					  <h3>Festivals</h3>
					  <ul>
						<li class="ui-corner-left"><a href="#">Halloween - 31st Oct</a></li>
						<li class="ui-corner-left"><a href="#">Christmas - 25th Dec</a></li>
						<li class="ui-corner-left"><a href="#">New Year - 1st Jan</a></li>
					  </ul>
					</section>
				  </div>
				</div>
			</div>
		</nav>
		<script>
			var toolbarButtons = {};
			var commonDialog = null;
			function __(eleId){
				return document.getElementById(eleId);
			}
			if (!String.prototype.startsWith) {
				String.prototype.startsWith = function(searchString, position) {
					position = position || 0;
					return this.indexOf(searchString, position) === position;
				};
			}
			function fnpInitialize(){
				//initializing menu
				var navmenubar = __("navmenubar");
				var menuUl = navmenubar.firstElementChild;
				var head = menuUl.firstElementChild;
				var menuLis = head.children;
				for(var i = 0; i < menuLis.length; i++){
					menuLis[i].onmouseenter = activateMenuIntended;
					menuLis[i].onmouseleave = deactivateMenuIntended;
					//abc(menuLis[i]);
				}

				var submenuDivs = navmenubar.children;
				for(var i = 0; i < submenuDivs.length; i++){
					submenuDivs[i].onmouseenter = trackSubmenuStatus;
					submenuDivs[i].onmouseleave = trackSubmenuStatus;
				}
			}
			function getCurrentlyClickedToolbarButton(){
				for(var buttonId in toolbarButtons){
					var toolbarButton = toolbarButtons[buttonId];
					if(toolbarButton.fnp_Clicked){
						return toolbarButton;
					}
				}
				return undefined;
			}
			function toolbarButtonUnclicked(button){
				button.fnp_Clicked = false;
				if(button.id == "quicksearchbtn")
					button.fnp_targetEle.className = "clipped";
				else {
					//TODO Remove JQuery
					if(event.target.className.indexOf("show_login_form")>=0)
						return false;
					if(button.className == 'close-reveal-modal')  //for 'X'-Icon
						$('#commondialogs, #commondialogs>div').removeAttr("class");
					else
						button.fnp_targetEle.removeAttribute("class");
				}
				if(button.fnp_isShownInCommonDialog){
					commonDialog.removeAttribute("class");
				}
			}
			function activateMenu(menuLi){

				navbarmenu = closeAllMenus();
				var menuA = menuLi.children[0];
				menuA.parentElement.className = "opened";
				navbarmenu.fnp_activeMenu = menuA;
				var menuId = menuA.getAttribute("id").substring(1);
				var activeSubMenu = __(menuId);
				activeSubMenu.className = "opened";
				navbarmenu.fnp_activeSubMenu = activeSubMenu;
				navbarmenu.className = "opened";
				menuA.focus();
				var toolbarButton = getCurrentlyClickedToolbarButton();
				if(toolbarButton){
					toolbarButtonUnclicked(toolbarButton);
				}
				if(navbarmenu.fnp_prevHoverIntent){
					clearTimeout(navbarmenu.fnp_prevHoverIntent);
					delete navbarmenu.fnp_prevHoverIntent;
				}
			}
			function closeAllMenus(){
				var navbarmenu = __("navmenubar");//menuUl.parentElement;
				var head = navbarmenu.children[0];
				navbarmenu.removeAttribute("class");

				for(var i = 0; i < head.children.length; i++){
					if(head.children[i].nodeName == "DIV"){
						head.children[i].removeAttribute("class");
					}
				}
				var menuUl = head.children[0];
				for(var i = 0; i < menuUl.children.length; i++){
					menuUl.children[i].removeAttribute("class");
				}
				delete navbarmenu.fnp_activeMenu;
				if(navbarmenu.fnp_activeSubMenu){
					if(navbarmenu.fnp_activeSubMenu.fnp_isStillHere)delete navbarmenu.fnp_activeSubMenu.fnp_isStillHere;
					delete navbarmenu.fnp_activeSubMenu;
				}
				return navbarmenu;
			}
			function activateMenuIntended(event){
				var menuLi = event.target;
				var menuA = menuLi.firstElementChild;
				var menuUl = menuLi.parentElement;
				var head = menuUl.parentElement;
				var navbarmenu = head.parentElement;
				navbarmenu.fnp_activeMenu = menuA;
				var fromEle = event.relatedTarget;
				var toEle = event.target;
				prepareNavDiv(menuLi);
				if(fromEle != null && ( toEle.parentElement == fromEle.parentElement)){
					//call immediately... no need to delay
					activateMenu(menuLi);
					if(navbarmenu.fnp_prevHoverIntent){
						clearTimeout(navbarmenu.fnp_prevHoverIntent);
						delete navbarmenu.fnp_prevHoverIntent;
					}
				}
				else {
					navbarmenu.fnp_prevHoverIntent = setTimeout(function(){
						if(navbarmenu.fnp_activeMenu && (menuUl.contains(navbarmenu.fnp_activeMenu) || (navbarmenu.fnp_activeSubMenu && navbarmenu.fnp_activeSubMenu.fnp_isStillHere))){
							//hover is intended - fire it
							activateMenu(menuLi);
						}
					});
				}
			}
			function deactivateMenuIntended(event){
				//close only if not still not hovering
				var toEle = event.relatedTarget;
				var fromEle = event.target;
				if(fromEle != null && toEle != null && (toEle.parentElement == fromEle.parentElement || toEle.nodeName == "SECTION" || toEle.nodeName == 'ASIDE')){
					//no need of any action
				}
				else {
					closeAllMenus();
				}
			}
			function trackSubmenuStatus(event){
				if(event.type == "mouseenter")
					event.target.fnp_isStillHere = true;
				else if(event.type == "mouseleave") {
					delete event.target.fnp_isStillHere;
					closeAllMenus();
				} else {
					delete event.target.fnp_isStillHere;
					if(event.target == null || event.relatedTarget == null || event.relatedTarget.nodeName == "NAV" || event.relatedTarget.nodeName == "HTML" || event.relatedTarget.nodeName == "SECTION" || event.relatedTarget.nodeName == "IMG" || event.relatedTarget.nodeName == "ASIDE" || event.relatedTarget.nodeName == "DIV")
						closeAllMenus();
				}
			}
		function prepareNavDiv(menuLi){

			var menuA = menuLi.firstElementChild;
			var contentDiv = menuA.getAttribute("id").substring(1);
			var menuItemLeft = menuLi.offsetLeft;
			var totalSectionWidth = findOffsetWidth(contentDiv);/*document.getElementById(contentDiv).offsetWidth;*/
			var totalWidthOfMenu=document.getElementById("navmenubar").offsetWidth;

			var rightSpace=(totalWidthOfMenu-totalSectionWidth);
			var subMenuLeftstart = menuItemLeft;
			var endPadding = 58; //We are adding right buffer from 3rd position of the screen.
			//position of li + totalsectionwidth
			if(menuItemLeft+totalSectionWidth>totalWidthOfMenu){
				var extendedWidth=(menuItemLeft+totalSectionWidth)-totalWidthOfMenu;
				subMenuLeftstart=menuItemLeft-extendedWidth;
				if(totalWidthOfMenu/3<menuItemLeft){
					subMenuLeftstart=subMenuLeftstart-endPadding;
				}
			}
			document.getElementById(contentDiv).style.left = subMenuLeftstart+"px";
		}
		function findOffsetWidth(id){
			var width=0;
			document.getElementById(id).style.position="absolute";
			document.getElementById(id).style.display="block";
			width = document.getElementById(id).offsetWidth;
			document.getElementById(id).style.position=null;
			document.getElementById(id).style.display=null;
			return width;

		}
		window.onload=fnpInitialize;

		</script>
	</header>