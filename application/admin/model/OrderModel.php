<?php

namespace app\admin\model;
use think\Config;
use think\Model;

class OrderModel extends Model
{
    // 确定链接表名
    protected $table = 'snake_porder';
//   $list = M('porder')->where($map)->field("*,(select username from snake_customer where id=customer_id) as username")->order($sort)->paginate(C('LIST_ROWS'));
   public function getOrderList() {
      dump(Config::get());
      return $this->field("*,(select username from snake_customer where id=customer_id) as username")
          ->limit(0,10)->select();
   }
}