<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'dashboard'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/dashboard'); ?>">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
    <!-- <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'cms'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/cms/'); ?>">
            <i class="fa fa-user-circle"></i> <span>CMS List</span>
          </a>
        </li> -->
    <!-- <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'testimonials'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/testimonials/'); ?>">
            <i class="fa fa-superpowers"></i> <span>Testimonials List</span>
          </a>
    </li> -->

    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'gallery'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/gallery'); ?>">
            <i class="fa fa-user-circle"></i> <span>Slider List</span>
          </a>
    </li>
      
    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'Category'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/Category'); ?>">
            <i class="fa fa-exchange"></i> <span>Category List</span>
          </a>
    </li>

    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'Subcategory'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/Subcategory'); ?>">
            <i class="fa fa-line-chart"></i> <span>Subcategory</span>
          </a>
    </li>

    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'Item'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/Item'); ?>">
            <i class="fa fa-code-fork"></i> <span>Item List</span>
          </a>
    </li>

    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'city'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/city'); ?>">
            <i class="fa fa-dot-circle-o"></i> <span>Manage city</span>
          </a>
    </li>

    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'city'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/hike_price'); ?>">
            <i class="fa fa-bar-chart"></i> <span>Manage Hike Price</span>
          </a>
    </li> 

    <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'sequence'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/sequence'); ?>">
            <i class="fa fa-list-ol"></i> <span>Manage Item Sequence</span>
          </a>
    </li>

<li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'order'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/order'); ?>">
            <i class="fa fa-shopping-cart"></i> <span>Manage Order</span>
          </a>
    </li>

  <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'coupon'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/coupon'); ?>">
            <i class="fa fa-shopping-cart"></i> <span>Manage Coupon</span>
          </a>
  </li>

<li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'card_message'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/card_message'); ?>">
            <i class="fa fa-shopping-cart"></i> <span>Manage Card Message</span>
          </a>
  </li>

<li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'card_message'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/card_message/email_tamplate'); ?>">
            <i class="fa fa-shopping-cart"></i> <span>Manage Email Tamplate</span>
          </a>
  </li>

  <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'user'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/user'); ?>">
            <i class="fa fa-shopping-cart"></i> <span>Manage User </span>
          </a>
  </li>

 <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'addon'){ ?>active<?php } ?>">
          <a href="<?php echo base_url('admin/addon'); ?>">
            <i class="fa fa-shopping-cart"></i> <span>Manage Add-on List </span>
          </a>
  </li>
     <!-- <li class="treeview <?php if($this->uri->segment(2) == '' || $this->uri->segment(2) == 'sms'){ ?>active<?php } ?>">
          <a href="<?php //echo base_url('admin/cms/file_change'); ?>">
            <i class="fa fa-paper-plane" aria-hidden="true"></i>
            <span>file Changes</span>
          </a>
        </li> -->

    </ul>
    </section>
    <!-- /.sidebar -->
  </aside>