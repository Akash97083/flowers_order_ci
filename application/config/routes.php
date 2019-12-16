<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'welcome';
$route['admin'] = 'admin/admin';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['about-us'] = 'welcome/cms_detail';
$route['the-founder'] = 'welcome/cms_detail';
$route['courses'] = 'welcome/cms_detail';
$route['workshops'] = 'welcome/cms_detail';
$route['supplier-directory'] = 'welcome/cms_detail';
$route['fashion-aptitude-test'] = 'welcome/cms_detail';
$route['pay-as-you-go-consultations'] = 'welcome/cms_detail';
$route['coaching'] = 'welcome/cms_detail';
$route['garment-production-unit'] = 'welcome/cms_detail';
$route['contact-us'] = 'welcome/cms_detail';
$route['gallery'] = 'welcome/gallery';


############## Front -End ############
$route['category'] = 'welcome/category';
$route['flowers'] = 'welcome/flowers';
$route['flowers-type'] = 'welcome/flowers_type';
$route['flower-combos'] = 'welcome/flower_combos';
$route['plants'] = 'welcome/plants';
$route['occasion'] = 'welcome/occasion';
$route['gift'] = 'welcome/gift';
$route['cackes'] = 'welcome/cackes';
$route['item-detail'] = 'welcome/item_detail';
$route['cart'] = 'welcome/cart';
$route['order-detail'] = 'welcome/order_detail';
$route['login'] = 'welcome/login';
$route['forgot-password'] = 'welcome/forgot_password';

$route['register'] = 'welcome/register';
$route['forgot-password'] = 'welcome/forgot_password';
$route['dashboard'] = 'welcome/dashboard';

$route['by-price'] = 'welcome/by_price';



############## Front -End ############
