<?php

namespace app\admin\validate;

use think\Validate;

class MemberValidate extends Validate
{
    protected $rule = [
        ['nick_name', 'require', '会员名称不能为空'],
        ['mobile', 'regex:/^1\d{10}$/', '手机号格式不正确'],
        ['password', 'length:6,20', '密码应在6-20位'],
        ['id_number', 'require', '身份信息不能为空']
    ];

}