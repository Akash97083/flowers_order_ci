<?php $global_site_name_en = get_global_data('global_site_name_en'); ?>
<!doctype html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $global_site_name_en->field_value;?></title>
<style>
  .ReadMsgBody {
    width: 100%;
    background-color: #ffffff;
  }
  .ExternalClass {
    width: 100%;
    background-color: #ffffff;
  }
  .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {
    line-height: 100%;
  }
  html {
    width: 100%;
  }
  body {
    -webkit-text-size-adjust: none;
    -ms-text-size-adjust: none;
    margin: 0;
    padding: 0;
  }
  table {
    border-spacing: 0;
    table-layout: fixed;
    margin: 0 auto;
  }
  table table table {
    table-layout: auto;
  }
  .yshortcuts a {
    border-bottom: none !important;
  }
  img:hover {
    opacity: 0.9 !important;
  }
  a {
    color: #CC3367;
    text-decoration: none;
  }
  .textbutton a {
    font-family: 'open sans', arial, sans-serif !important;
  }
  .btn-link a {
    color: #FFFFFF !important;
  }

  @media only screen and (max-width: 640px) {
    body {
      width: auto !important;
    }
    img[class="img1"] {
      width: 100% !important;
      height: auto !important;
    }
  }
  @media only screen and (max-width: 480px) {
    body {
      width: auto !important;
    }
    img[class="img1"] {
      width: 100% !important;
    }
  }
</style>
</head>


<body marginwidth="0" marginheight="0" style="margin-top: 0; margin-bottom: 0; padding-top: 0; padding-bottom: 0; width: 100%; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;" offset="0" topmargin="0" leftmargin="0">
<table  data-module="Layou-1" data-bgcolor="Background Color" class="" width="100%" cellspacing="0" cellpadding="0" border="0" bgcolor="#494c50" align="center">
  <tr>
    <td data-bg="Main BG" style="background-size:cover; background-position:top;" background="<?php echo base_url();?>images/bg.jpg" align="center"><table cellspacing="0" cellpadding="0" border="0" align="center">
        <tr>
          <td height="50"></td>
        </tr>
        <tr>
          <td width="600" align="center"><table style="border-radius:4px; box-shadow: 0px -3px 0px #D4D2D2;" width="95%" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF" align="center">
              <tr>
                <td height="20"></td>
              </tr>
              <tr>
                  <td align="center">
                  <a href="#" style="background-color: #ffffff; display: inline-block; padding: 5px;">
                    <img src="<?php echo base_url();?>webadmin/front/assets/images/logo.png" alt="logo" style="display:block; border:0px;" editable="" label="logo" data-crop="false" mc:edit="noti-1-1">
                  </a>
                </td>
              </tr>
              <tr>
                <td height="60"></td>
              </tr>
              <tr>
                <td align="center"><table width="90%" cellspacing="0" cellpadding="0" border="0" align="center">
                    <!-- title -->
                    <tr>
                        <td data-link-style="text-decoration:none; color:#CC3367;" data-link-color="Content Link" data-color="Headline" data-size="Headline" mc:edit="noti-1-3" style="font-family: 'Open Sans', Arial, sans-serif; font-size:36px; color:#3b3b3b; font-weight: bold; letter-spacing:4px;" align="center">
                            <singleline label="title">Welcome to <br/><span style="color: #CC3367;font-size: 25px;letter-spacing: 0;line-height: 36px;margin-top: 15px;float: left;width: 100%;border-top: 1px dashed #CC3367;border-bottom: 1px dashed #CC3367;padding: 10px 0;"><!--LUESNWW--><?php echo $global_site_name_en->field_value;?></span></singleline>
                        </td>
                    </tr>
                    <!-- end title -->
                    <tr>
                      <td align="center"><table width="25" cellspacing="0" cellpadding="0" border="0">
                          <tr>
                            <td data-border-bottom-color="Dash" style="border-bottom:2px solid #CC3367;" height="20"></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                    </tr>
                    <!-- content -->
                    <tr>
                        <td data-link-style="text-decoration:none; color:#CC3367;" data-link-color="Content Link" data-color="Main Text" data-size="Main Text" mc:edit="noti-1-4" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#7f8c8d; line-height:22px;" align="center">
                              <multiline label="content"><?php print_r($email_id);?></multiline>
                        </td>
                        <td data-link-style="text-decoration:none; color:#CC3367;" data-link-color="Content Link" data-color="Main Text" data-size="Main Text" mc:edit="noti-1-4" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#7f8c8d; line-height:22px;" align="center">
                              <multiline label="content"><?php print_r($user_password);?></multiline>
                        </td>
                    </tr>
                    <!-- end content -->
                  </table></td>
              </tr>
              <tr>
                <td height="40"></td>
              </tr>
              <tr>
                <td height="40"></td>
              </tr>
              <!-- option -->
              <tr>
                <td data-bgcolor="Link BG" style=" border-bottom-left-radius:4px; border-bottom-right-radius:4px;" bgcolor="#f3f3f3" align="center"><table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tr>
                      <td height="15"></td>
                    </tr>
                    <tr>
                      <td data-link-style="text-decoration:none; color:#7f8c8d;" data-link-color="Text Link" data-color="Main Text" mc:edit="noti-1-6" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#7f8c8d;" align="center">
                       
                          <webversion><a href="<?php echo base_url();?>privacy-policy" target="_blank" style="color:#7f8c8d;">Privacy</a></webversion> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <webversion><a href="<?php echo base_url();?>contact-us" target="_blank" style="color:#7f8c8d;">Help</a></webversion>
                      </td>
                    </tr>
                    <tr>
                      <td height="15"></td>
                    </tr>
                  </table></td>
              </tr>
              
              <tr>
                <td data-bgcolor="Link BG" style=" border-bottom-left-radius:4px; border-bottom-right-radius:4px;" bgcolor="#f3f3f3" align="center"><table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tr>
                      <td height="15"></td>
                    </tr>
                    <tr>
                      <td data-link-style="text-decoration:none; color:#7f8c8d;" data-link-color="Text Link" data-color="Main Text" mc:edit="noti-1-6" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#7f8c8d;" align="center"></td>
                    </tr>
                    <tr>
                      <td height="15"></td>
                    </tr>
                  </table></td>
              </tr>
              <!-- end option -->
            </table></td>
        </tr>
        <tr>
          <td style="line-height:0px;" align="center"><img style="display:block; line-height:0px; font-size:0px; border:0px;" src="<?php echo base_url();?>images/point.png" alt="img"></td>
        </tr>
        <tr>
          <td height="30"></td>
        </tr>
        <!-- profile-img -->
       
        <!-- end profile-img -->
        <tr>
          <td height="30"></td>
        </tr>
        <!-- social -->
        <tr>
          <td align="center"><table cellspacing="0" cellpadding="0" border="0" align="center">
              <tr>
                <td style="line-height:0xp;" align="center"><a href="https://www.facebook.com/I75-RV-184611162085156"> <img src="<?php echo base_url();?>images/fb.png" alt="img" style="display:block; line-height:0px; font-size:0px; border:0px;" editable="" label="social-1" data-crop="false" mc:edit="noti-1-8" width="16"> </a></td>
                <td width="20"></td>
               
                <td width="20"></td>
              </tr>
            </table></td>
        </tr>
        <!-- end social -->
        <tr>
          <td height="15"></td>
        </tr>
        <!-- copyright -->
        <tr>
          <td data-link-style="text-decoration:none; color:#CC3367;" data-link-color="Copyright Link" data-color="Copyright" data-size="Copyright" mc:edit="noti-1-14" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#FFFFFF;" align="center"><singleline label="copyright">© <?php echo date('Y'); ?> <?php echo $global_site_name_en->field_value;?>. All Rights Reserved.</singleline></td>
        </tr>
        <!-- end copyright -->
        <tr>
          <td height="30"></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>