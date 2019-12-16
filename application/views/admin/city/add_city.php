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
      <div class="row1">
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"><?php //echo $page_title; ?></h3>
            </div>
            
            
            <div class="col-xs-12">
          		<?php
           if($this->session->flashdata('succmsg')): ?>
              <div class="alert alert-success">
              <button type="button" class="close" data-dismiss="alert">
                <i class="ace-icon fa fa-times"></i>
              </button>
               <?php echo $this->session->flashdata('succmsg');?>
              <br>
              </div>

          <?php endif; ?>
            
          <?php if($this->session->flashdata('errormsg')): ?>
              <div class="alert alert-danger" role="alert">
              <button type="button" class="close" data-dismiss="alert">
                <i class="ace-icon fa fa-times"></i>
              </button>
               <?php echo $this->session->flashdata('errormsg');?>
              <br>
              </div>
          <?php endif; ?>
            </div>

            <?php //print_r($cms_detail); ?>
            
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" id="frm_user" name="frm_user" method="post" action="<?php echo base_url('admin/city/add_city_data/'); ?>" enctype="multipart/form-data">
              <div class="box-body">
                
              
             <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">City Name <span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="image_name_en" placeholder="" class="col-xs-10 col-sm-5 form-control" value="<?php echo ($city_detail['city_name']?$city_detail['city_name'] : '');?>" required="" readonly=""/>
                  </div>
              </div>


           <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Midnight Delivery</label>
                  <div class="col-sm-9">
                    <select name="midnight_delivery" id="midnight_delivery" class="form-control">
                        <option value="">Select Midnight Delivery</option>
                        <option value="Yes" <?=$city_detail['midnight_delivery'] == 'Yes' ? ' selected="selected"' : '';?>>Yes</option>
                        <option value="No" <?=$city_detail['midnight_delivery'] == 'No' ? ' selected="selected"' : '';?>>No</option>
                    </select>
                  </div>
          </div>

          <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Delivery Frequency</label>
                  <div class="col-sm-9">
                    <select name="delivery_frequency" id="midnight_delivery" class="form-control">
                        <option value="">Select Delivery Frequency</option>
                        <option value="same_day" <?=$city_detail['delivery_frequency'] == 'same_day' ? ' selected="selected"' : '';?>>Same Day</option>
                        <option value="next_day" <?=$city_detail['delivery_frequency'] == 'next_day' ? ' selected="selected"' : '';?>>Next Day</option>

                        <option value="day_after" <?=$city_detail['delivery_frequency'] == 'day_after' ? ' selected="selected"' : '';?>>Day After</option>

                    </select>
                  </div>
          </div>




        <input type="hidden" name="city_id" value="<?php echo ($city_detail['id']?$city_detail['id'] : '');?>">
               
                
              </div>
              <!-- /.box-body -->
			  <?php $back_link = base_url('admin/gallery'); ?>
              <div class="box-footer">
              	<div class="col-sm-8">


                    <a class="btn btn-default pull-right" href="<?php echo $back_link; ?>" style="margin-right:10px;">Cancel</a>
                    <button type="submit" class="btn btn-info pull-right" style="margin-right:10px;">Submit</button>
                  </div>
              </div>
              <!-- /.box-footer -->
            </form>

              <form class="form-horizontal" id="frm_delivery" name="frm_user" method="post" action="<?php echo base_url('admin/city/add_delivery_data/'); ?>" enctype="multipart/form-data">
              <div class="box-body">

              <div class="form-group">
                  <label for="inputEmail3 clockpicker" class="col-sm-3 control-label">From Time<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="from_time" name="from_time" placeholder="" class="col-xs-10 col-sm-5 form-control" value="" readonly="" />
                  </div>
              </div>

              <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">To Time<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="single-input" name="to_time" placeholder="" class="col-xs-10 col-sm-5 form-control" value="" readonly="" />
                  </div>
              </div>

              <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Delivery Charge<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="" name="delivery_charge" placeholder="Delivery Charge" class="col-xs-10 col-sm-5 form-control" value=""/>
                  </div>
              </div>

              <input type="hidden" name="city_id" value="<?php echo $this->uri->segment('4');?>">
              <input type="hidden" name="delivery_id" id="delivery_id" value="">
              <div class="box-footer">
                <div class="col-sm-8">
                   <button type="submit" class="btn btn-info pull-right" style="margin-right:10px;">Submit</button>
                  </div>
              </div>


      </div>
    </form>

            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>SL #</th>
                  <th>City Name</th>
                  <th>From Time</th>
                  <th>To Time</th>
                  <th>Delivert Charge</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                 <?php

        if($city_recordset)
        {
        $startRecord ='0';
        $i = '1';
          foreach($city_recordset as $row1)
          {
            //$editLink = str_replace("{{ID}}",$recordset[$i]['id'],$edit_link);
            //$deleteLink = str_replace("{{ID}}",$recordset[$i]['id'],$delete_link);
            //$activeLink = str_replace("{{ID}}",$recordset[$i]['id'],$active_link);
            $editLink = base_url('admin/category/add_category/').$row1['delivery_charges_id'];
        ?>
                <tr id="tr<?php echo $row1['delivery_charges_id']; ?>">
                  <td><?php echo $i; ?></td>
                 
                  <td><?php echo $row1['city_name']; ?></td>
                  <td><?php echo $row1['from_time']; ?></td>
                 <td><?php echo $row1['to_time']; ?></td>
                  <td><?php echo $row1['delivert_charge']; ?></td>
                  <td><a href="javascript:void(0);" onclick="change_status('<?php echo $row1['delivery_charges_id']; ?>');" id="cng_status<?php echo $row1['delivery_charges_id']; ?>" class="<?php echo ($row1['delivery_status']=='Active')?'activebutton':'inactivebutton';?>"><?php echo ($row1['delivery_status']=='Active')?'Active':'Inactive';?></a></td>

                  <td>
                  <a class="btn btn-xs btn-info" href="" title="Update Delivery Charge" data-toggle="modal" data-target="#myModal" onclick="GetDeliveryCharge('<?php echo $row1['delivery_charges_id']; ?>')"><i class="ace-icon fa fa-pencil bigger-120"></i> </a> 
                 
                 <!-- <a class="btn btn-xs btn-danger" href="javascript:void(0);" title="Delete User" onclick="delete_user('<?php //echo $row1['id']; ?>');"> <i class="ace-icon fa fa-trash-o bigger-120"></i> </a> -->
                 </td>
                
                </tr>
                <?php
                $i++;
          }
        }
        else
        {
        ?>
                <tr>
                  <td colspan="8">No Records Found</td>
                </tr>
                <?php } ?>
                </tbody>
              </table>

            </div>

            </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row1 -->
    </section>
    <!-- /.content -->
  </div>

 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Delivery Charge </h4>
        </div>
        <div class="modal-body">

          <form class="form-horizontal" id="frm_update_delivery" name="frm_user" method="post" action="<?php echo base_url('admin/city/add_delivery_data/');?>" enctype="multipart/form-data">
              <div class="box-body">

              <div class="form-group">
                  <label for="inputEmail3 clockpicker" class="col-sm-3 control-label">From Time<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="update_from_time" name="from_time" placeholder="" class="col-xs-10 col-sm-5 form-control" value="" readonly="" required="" />
                  </div>
              </div>

              <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">To Time<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="update_to_time" name="to_time" placeholder="" class="col-xs-10 col-sm-5 form-control" value="" readonly="" required="" />
                  </div>
              </div>

              <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Delivery Charge<span class="red">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" id="update_delivery_charge" name="delivery_charge" placeholder="Delivery Charge" class="col-xs-10 col-sm-5 form-control" value="" required=""/>
                  </div>
              </div>

              <input type="hidden" name="city_id" value="<?php echo $this->uri->segment('4');?>">
              <input type="hidden" name="delivery_id" id="update_delivery_id" value="">

              <div class="box-footer">
                <div class="col-sm-8">
                   <button type="submit" class="btn btn-info pull-right" style="margin-right:10px;">Submit</button>
                  </div>
              </div>


      </div>
    </form>
          


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<!-- End Modal -->
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
            midnight_delivery: {
                validators: {
                    notEmpty: {
                        message: 'Midnight Delivery is required and cannot be empty'
                    }
                }
            },

           delivery_frequency: {
                validators: {
                    notEmpty: {
                        message: 'Delivery Frequency is required and cannot be empty'
                    }
                }
            },
          }
    });
});


function change_status(id){
  
  if(confirm("Are you sure to change status of this record?"))
  {
    $.ajax({
      url : '<?php echo base_url('admin/city/changedeliverystatus/'); ?>',
      type : 'POST',
      data : 'id=' + id,
      //dataType : 'json',
      beforeSend : function(jqXHR, settings ){
        //alert(url);
      },
      success : function(data, textStatus, jqXHR){
        $('#cng_status'+id).removeClass('activebutton').removeClass('inactivebutton').addClass(data.toLowerCase()+'button');
        $('#cng_status'+id).html(data);
      },
      /*complete : function(jqXHR, textStatus){
        alert(3);
      },*/
      error : function(jqXHR, textStatus, errorThrown){
      }
    });
  }
}

</script>

<script type="application/javascript">
$(document).ready(function() {
    $('#frm_delivery').bootstrapValidator({
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
            from_time: {
                validators: {
                    notEmpty: {
                        message: 'From time is required and cannot be empty'
                    }
                }
            },

           to_time: {
                validators: {
                    notEmpty: {
                        message: 'To time is required and cannot be empty'
                    }
                }
            },

          delivery_charge: {
                validators: {
                    notEmpty: {
                        message: 'Delivery charge is required and cannot be empty'
                    }
                }
            },

          }
    });
});

 function GetDeliveryCharge(val){
  var city_id = '<?php echo $this->uri->segment('4');?>';
  $.ajax({
      type:'POST',
      url:'<?php echo base_url('admin/city/GetDeliveryChargeDetail');?>',
      data:{'id':val,'city_id':city_id},
      dataType: "json",
      success: function(data){
       // alert(data[0].id);
       $('#update_from_time').val(data[0].from_time);
       $('#update_to_time').val(data[0].to_time);
       $('#update_delivery_charge').val(data[0].delivert_charge);
       $('#update_delivery_id').val(data[0].id);

      }
  });

 }

</script>
<script type="text/javascript">
 var input = $('#single-input').clockpicker({
  placement: 'bottom',
  align: 'left',
  autoclose: true,
  'default': 'now'
});

 var input = $('#from_time').clockpicker({
  //twelvehour: true,
  placement: 'bottom',
  align: 'left',
  autoclose: true,
  'default': 'now'
});

 var input = $('#update_from_time').clockpicker({
  placement: 'bottom',
  align: 'left',
  autoclose: true,
  'default': 'now'
});

 var input = $('#update_to_time').clockpicker({
  placement: 'bottom',
  align: 'left',
  autoclose: true,
  'default': 'now'
});

</script>

<?php $this->load->view('include/footer.php');?>