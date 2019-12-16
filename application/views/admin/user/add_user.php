<?php $this->load->view('include/meta.php');?>
<?php $this->load->view('include/header.php');?>
<!--sidebar-->
<?php $this->load->view('include/sidebar.php');?>
<!--end Sidebar-->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?php echo $page_title; ?>
      </h1>
      <ol class="breadcrumb">
        <?php echo $breadcrumb; ?>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            
            
            <div class="col-xs-12">
			<?php if($succmsg!=''){?>
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="ace-icon fa fa-times"></i>
                    </button>
						<?php echo $succmsg; ?>
                    <br>
                </div>
            <?php } ?>
            
            <?php if($this->session->flashdata('errmsg')): ?>
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="ace-icon fa fa-times"></i>
                    </button>
                        <?php echo $this->session->flashdata('errmsg');?>
                    <br>
                </div>
           <?php endif; ?>
            </div>

            <?php //print_r($UserDetail); ?>
            
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" id="frm_user" name="frm_user" method="post" action="<?php echo base_url('admin/category/category_data/'); ?>" enctype="multipart/form-data">
              <div class="box-body">
                
              
             <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">User Name</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="user_name" placeholder="User Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['full_name']?$UserDetail['full_name'] : '');?>">
                  </div>
                </div>
                
                

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">User Email<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="category_name" placeholder="Email Id" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['email_id']?$UserDetail['email_id'] : '');?>" onblur="chk_categoery(this.value)"/> 
                    <span id="error" style="display:block; color: red"></span>
                  </div>

                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Company Name</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="company_name" placeholder="Company Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['company_name']?$UserDetail['company_name'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Address</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="address" placeholder="Address" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['address']?$UserDetail['address'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">City</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="city" placeholder="City Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['city']?$UserDetail['city'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">State</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="state" placeholder="State" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['state']?$UserDetail['state'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Zip Code</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="zip_code" placeholder="Company Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['zip_code']?$UserDetail['zip_code'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Country</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="country" placeholder="Company Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['country']?$UserDetail['country'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Contact Number</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="contact_no" placeholder="Company Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['contact_no']?$UserDetail['contact_no'] : '');?>">
                  </div>
                </div>




                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">alternative Contact No</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="alternative_contact_no" placeholder="Alternative Contact No" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['alternative_contact_no']?$UserDetail['alternative_contact_no'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Alternative Email Id</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="alternative_email_id" placeholder="Alternative Email Id" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['alternative_email_id']?$UserDetail['alternative_email_id'] : '');?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Vat Number</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="vat_number" placeholder="Vat Number" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($UserDetail['vat_number']?$UserDetail['vat_number'] : '');?>">
                  </div>
                </div>

                


        <input type="hidden" name="user_id" value="<?php echo ($UserDetail['id']?$UserDetail['id'] : '');?>">
               
                
              </div>
              <!-- /.box-body -->
			  <?php $back_link = base_url('admin/user'); ?>
              <div class="box-footer">
              	<div class="col-sm-8">
                  <a class="btn btn-default pull-right" href="<?php echo $back_link; ?>" style="margin-right:10px;">Cancel</a>
                    <!-- <button type="submit" class="btn btn-info pull-right" style="margin-right:10px;" id="sub">Submit</button> -->
                  </div>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
<script>
  
   CKEDITOR.replace( '',{
    allowedContent: true,
  });
  </script>

<script type="application/javascript">
$(document).ready(function() {
    $('#frm_user').bootstrapValidator({
  		framework: 'bootstrap',
		  excluded: [':disabled'],
        err: {
            container: function($field, validator) {
                return $field.parent().next('#messages');
            }
        },
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
           category_name: {
                validators: {
                    notEmpty: {
                        message: 'Category name is required and cannot be empty'
                    }
                }
            },
      
       description: {
                validators: {
                    notEmpty: {
                        message: 'Description is required and cannot be empty'
                    }
                }
            },
		
         }
    });
});

function chk_categoery(val){
 var cat_id ='<?php echo ($UserDetail['id']?$UserDetail['id'] : '');?>';
 var v_error     = '1px solid #f32517';
 var v_ok        = '1px solid green';
 $.ajax({
    type:"POST",
    url:'<?php echo base_url('admin/category/category_check');?>',
    data:{'cat_id':cat_id,'category_name':val},
    success: function(data){
      if(data==1)
        { 
          //$("#name").val('');
           $("#name").css('border',v_error);
           $('#error').show();   
          $('#error').html("Category name already exists").slideDown(1000);
          $('#sub').prop('disabled',true);
          return false; 
           
           //$('.alert_mssg').html("Duplicate location").fadeIn(1000).fadeOut(3000);
          //$('#update_location_'+btn_val).val('');
        }else{
          $("#name").css('border',v_ok);
          $('#error').slideUp(1000);
          $('#sub').prop('disabled',false);
        }
    }
 });
}

</script>

<?php $this->load->view('include/footer.php');?>