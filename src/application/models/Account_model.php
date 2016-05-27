<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: feizheng
 * Date: 5/27/16
 * Time: 5:10 PM
 */
require APPPATH . '/models/Base_model.php';

class Account_model extends Base_Model
{
  public function __construct()
  {
    parent::__construct();
    $this->setTable('accounts');
  }
}
