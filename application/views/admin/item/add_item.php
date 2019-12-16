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

            <?php //print_r($itemDetail); ?>
            
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" id="frm_user" name="frm_user" method="post" action="<?php echo base_url('admin/item/add_item_data/'); ?>" enctype="multipart/form-data">
              <div class="box-body">
                
              
             <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Item Slug</label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="alias" placeholder="" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['item_slug']?$itemDetail['item_slug'] : '');?>" readonly/>
                  </div>
                </div>
                
                

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Category Name <span class="red">*</span></label>
                      <div class="col-sm-9">
                          <select name ="category_id" id="category_id" class="form-control" onchange="select_sub_cat(this.value);">
                          <option value="">Select Category </option>
                          <?php 
                          foreach($getAllcategory as $key=> $row){
                          if($row['id'] == $itemDetail['category_id']){

                          $selected = 'selected';

                          }else{
                          $selected = '';

                          }?>
                          <option value="<?php echo $row['id'];?>" <?php echo $selected;?>><?php echo $row['category_name'];?></option>
                          <?php }

                          ?>

                          </select>
                      </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Sub Category<span class="red">*</span></label>
                  <div class="col-sm-9">
                   <select name ="sub_category_id" id="sub_category_id" class="form-control chosen-select" onchange="">
                       <option value="">Select Sub Category </option>
                       
                   </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Item Name <span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="item_name" placeholder="Item Name" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['item_name']?$itemDetail['item_name'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Item Price <span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="item_price" placeholder="Item Price" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['item_price']?$itemDetail['item_price'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Secial Price</label>
                  <div class="col-sm-9">
                    <input type="text" name="secial_price" placeholder="Secial Price" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['secial_price']?$itemDetail['secial_price'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Stock<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="stock" placeholder="Stock" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['stock']?$itemDetail['stock'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">As Shown Description</label>
                  <div class="col-sm-9">
                    <input type="text" name="shown_short_description" placeholder="As Shown Description" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['shown_short_description']?$itemDetail['shown_short_description'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Double The Quantity Price</label>
                  <div class="col-sm-9">
                    <input type="text" name="double_the_quantity_price" placeholder="Double The Quantity Price" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['double_the_quantity_price']?$itemDetail['double_the_quantity_price'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Double The Quantity Short Description</label>
                  <div class="col-sm-9">
                    <input type="text" name="double_qty_description" placeholder="Double Short The Quantity Price" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['double_qty_description']?$itemDetail['double_qty_description'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Upgrade Option Price/Glass Vase</label>
                  <div class="col-sm-9">
                    <input type="text" name="upgrade_option_price" placeholder="Upgrade Option Price" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['upgrade_option_price']?$itemDetail['upgrade_option_price'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Upgrade Option Short Description</label>
                  <div class="col-sm-9">
                    <input type="text" name="upgrade_option_description" placeholder="Upgrade Option Short Description" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($itemDetail['upgrade_option_description']?$itemDetail['upgrade_option_description'] : '');?>" />
                   
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Meta Tilte</label>
                  <div class="col-sm-9">
                    <textarea name="meta_tilte" placeholder="Description" class="col-xs-10 col-sm-5 form-control"/><?php echo htmlentities(($itemDetail['meta_tilte']?$itemDetail['meta_tilte'] : ''));?></textarea>
                     
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Meta Description<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <textarea name="meta_description" placeholder="Description" class="col-xs-10 col-sm-5 form-control"/><?php echo htmlentities(($itemDetail['meta_description']?$itemDetail['meta_description'] : ''));?></textarea>
                     
                  </div>
                </div>
              
               <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Item Description<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <textarea name="description" placeholder="Description" class="col-xs-10 col-sm-5 form-control"/><?php echo htmlentities(($itemDetail['description']?$itemDetail['description'] : ''));?></textarea>
                     
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Item Image <span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="file" name="item_image" placeholder="Item Image" class="col-xs-10 col-sm-5 form-control" />
                   
                  </div>
                </div>

                 <?php if($itemDetail['id'] !=''){ ?>

                  <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">Item Image</label>
                        <div class="col-sm-9">
                          <img src="<?php echo base_url().'uploads/item_image/'.$itemDetail['item_image']; ?>" height="100" width="150">
                        </div>
                  </div>

            <?php } ?>
           

            <div class="form-group">
              <div class="col-sm-9">
                  <label for="inputEmail3" class="col-sm-3 control-label">Occasion Type</label>
                  <?php foreach($occasionTpye as $os){
                    //print_r($os['id']).'<br>';
                    $occasion = explode(',',$itemDetail['occasion_type']);
                    //print_r($occasion);
                    $checked = in_array($os['id'],$occasion);
                    ?>
                    <?php echo $os['sub_cat_name']; ?><input type="checkbox" name="occasionType[]" id="tag_1" value="<?php echo $os['id'];?>" <?php echo ($checked ? 'checked' : '');?>>
                  <?php }?>

                 
                </div>
              </div>
                


        <input type="hidden" name="item_id" value="<?php echo ($itemDetail['id']?$itemDetail['id'] : '');?>">
               
                
              </div>
              <!-- /.box-body -->
			  <?php $back_link = base_url('admin/Item'); ?>
              <div class="box-footer">
              	<div class="col-sm-8">
                  <a class="btn btn-default pull-right" href="<?php echo $back_link; ?>" style="margin-right:10px;">Cancel</a>
                    <button type="submit" class="btn btn-info pull-right" style="margin-right:10px;" id="sub">Submit</button>
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


<script type="application/javascript">
$(document).ready(function() {
  select_sub_cat(<?php echo ($itemDetail['category_id']?$itemDetail['category_id']:'');?>);
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
           category_id: {
                validators: {
                    notEmpty: {
                        message: 'Category name is required and cannot be empty'
                    }
                }
            },

          sub_category_id: {
                validators: {
                    notEmpty: {
                        message: 'Sub category name is required and cannot be empty'
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

        item_price: {
                validators: {
                    notEmpty: {
                        message: 'Item Price is required and cannot be empty'
                    }
                }
            },

        stock: {
                validators: {
                    notEmpty: {
                        message: 'Stock is required and cannot be empty'
                    }
                }
            },

      <?php if($itemDetail['id']==''){ ?>
        item_image: {
                validators: {
                    notEmpty: {
                        message: 'Item Image is required and cannot be empty'
                    }
                }
            },
		<?php } ?>

         }
    });
});

 function select_sub_cat(val){
  var id ='<?php echo ($itemDetail['sub_cat_id']?$itemDetail['sub_cat_id']:'');?>';
  $.ajax({
    method:'POST',
    url:'<?php echo base_url('admin/item/selected_sub_cat');?>',
    data:{'category_id':val,'sub_cat_id':id},
    success:function(data){
      //alert(data);
      $('#sub_category_id').html(data).trigger('chosen:updated');

    }
  });


 }

function chk_categoery(val){
 var cat_id ='<?php echo ($itemDetail['id']?$itemDetail['id'] : '');?>';
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