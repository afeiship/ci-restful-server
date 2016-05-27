<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require APPPATH . '/libraries/REST_Controller.php';


class Test extends REST_Controller
{

  function __construct()
  {
    // Construct the parent class
    parent::__construct();
    $this->load->model('account_model', 'accountModel');
  }

  public function account_get()
  {
    $id = $this->get('id');
    if ($id === NULL) {
      $data = $this->accountModel->all();
    } else {
      $data = $this->accountModel->find($id);
    }
    $this->response($data);
  }

  public function account_post()
  {
    //GET PARAMS:$this->post  && $this->get
    //print_r($this->input->post());
  }

}
