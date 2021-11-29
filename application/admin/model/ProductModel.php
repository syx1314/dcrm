<?php

namespace app\admin\model;

use think\Model;

class ProductModel extends Model
{
    protected $table = 'snake_product';
   public function getProduct() {
    return $this;
   }
}