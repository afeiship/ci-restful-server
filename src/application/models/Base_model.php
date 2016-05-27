<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: feizheng
 * Date: 5/27/16
 * Time: 5:10 PM
 */
class Base_Model extends CI_Model
{
  private $table;

  public function setTable($table)
  {
    $this->table = $table;
  }

  public function getTable()
  {
    return $this->table;
  }

  /**============ C ============**/
  public function create()
  {
  }

  /**============ U ============**/
  public function update()
  {

  }

  /**============ R ============**/
  public function all()
  {
    $query = $this->db->get($this->table);
    return $query->result();
  }

  public function find($inId)
  {
    print_r('find', $inId);
    $query = $this->db->get_where($this->table, ['id' => $inId]);
    return $query->result();
  }

  /**============ D ============**/
  public function delete($inId)
  {
  }


}
