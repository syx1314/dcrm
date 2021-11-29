<?php

namespace app\admin\controller;


namespace app\admin\controller;
use app\admin\model\OrderModel;
use app\admin\model\ProductModel;

class Order extends Base
{
    public function index()
    {
        $map = $this->create_map();
//        $input = input();
//        if ($input['sort']) {
//            $sort = $input['sort'];
//        } else {
//            $sort = "id desc";
//        }
//        $list = M('porder')->where($map)->field("*,(select username from dyr_customer where id=customer_id) as username")->order($sort)->paginate(C('LIST_ROWS'));
        $order= new OrderModel();
        $list= $order->getOrderList();
        $this->assign('total_price', 100);
        $this->assign('cost', "200");
        $this->assign('reapi', null);
        $this->assign('_list',  $list);
        $this->assign('_total', 100);
        return $this->fetch();
    }

    private function create_map()
    {
        $input = input();
        $map['is_del'] = 0;
//        if ($input['key'] && $key = trim($input['key'])) {
//            $query_name = $input['query_name'];
//            if ($query_name) {
//                if (strpos($query_name, '.') !== false) {
//                    $qu_arr = explode('.', $query_name);
//                    $qu_rets = M($qu_arr[0])->where([$qu_arr[1] => $key])->field('id')->select();
//                    $map[$qu_arr[2]] = ['in', array_column($qu_rets, 'id')];
//                } else {
//                    $map[$query_name] = $key;
//                }
//            } else {
//                $map['order_number|title|product_name|mobile|out_trade_num'] = ['like', '%' . $key . '%'];
//            }
//        }
//        if ($input['status']) {
//            $map['status'] = intval($input['status']);
//        } else {
//            $map['status'] = ['gt', 1];
//        }
//
//        if ($input['type']) {
//            $map['type'] = $input['type'];
//            $cates = M('product_cate')->where(['type' => $input['type']])->select();
            $this->assign('cates', null);
//            if ($input['cate']) {
//                $product = M('product')->where(['cate_id' => $input['cate'], 'is_del' => 0])->select();
               $productModel= new ProductModel();
               $product= $productModel->getProduct();
                $this->assign('products', $product);
//                if ($input['product_id']) {
//                    $map['product_id'] = $input['product_id'];
//                }
//            }
//        }
//        if (I('isp')) {
//            if ($input['isp']) {
//                $map['isp'] = getISPText($input['isp']);
//            }
//            if ($input['client']) {
//                $map['client'] = $input['client'];
//            }
//
//            if ($input['reapi_id']) {
//                $map['api_cur_id'] = $input['reapi_id'];
//            }
//            if ($input['pay_way']) {
//                $map['pay_way'] = $input['pay_way'];
//            }
//            if ($input['customer_id']) {
//                $map['customer_id'] = $input['customer_id'];
//            }
//        if (I('end_time') && I('begin_time')) {
//            $time_style = I('time_style') ? I('time_style') : 'create_time';
//            $map[$time_style] = array('between', [strtotime(I('begin_time')), strtotime(I('end_time'))]);
//        }
//            $batch_mobile = $input['batch_mobile'];
//            if ($batch_mobile) {
//                $batch_order_number = str_replace(' ', '', str_replace(array("\r\n", "\r", "\n"), ",", $batch_mobile));
//                $bt_mo = preg_grep('/\S+/', explode(',', $batch_order_number));
//                $bt_mo && $map['mobile'] = array("in", $bt_mo);
//            }
            return $map;
        }
}