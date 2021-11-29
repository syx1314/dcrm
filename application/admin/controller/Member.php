<?php

namespace app\admin\controller;

use app\admin\model\MemberModel;

class Member extends Base
{
    // 文章列表
    public function index()
    {
        if(request()->isAjax()){

            $param = input('param.');

            $limit = $param['pageSize'];
            $offset = ($param['pageNumber'] - 1) * $limit;

            $where = [];
            if (!empty($param['searchText'])) {
                $where['title'] = ['like', '%' . $param['searchText'] . '%'];
            }

            $member = new MemberModel();
            $selectResult = $member->getMembersByWhere($where, $offset, $limit);

            foreach($selectResult as $key=>$vo){
                $selectResult[$key]['headimg'] = '<img src="' . $vo['headimg'] . '" width="40px" height="40px">';
                $selectResult[$key]['operate'] = showOperate($this->makeButton($vo['id']));
            }

            $return['total'] = $member->getAllMembers($where);  // 总数据
            $return['rows'] = $selectResult;

            return json($return);
        }

        return $this->fetch();
    }

    // 添加文章
    public function memberAdd()
    {
        if(request()->isPost()){
            $param = input('post.');

            unset($param['file']);
            $param['add_time'] = date('Y-m-d H:i:s');

            $member = new MemberModel();
            $flag = $member->addMember($param);

            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }

        return $this->fetch();
    }

    public function memberEdit()
    {
        $member = new MemberModel();
        if(request()->isPost()){

            $param = input('post.');
            unset($param['file']);
            $flag = $member->editMember($param);

            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }

        $id = input('param.id');
        $this->assign([
            'memberInfo' => $member->getOneMember($id)
        ]);
        return $this->fetch();
    }

    public function memberDel()
    {
        $id = input('param.id');

        $member = new MemberModel();
        $flag = $member->delMember($id);
        return json(msg($flag['code'], $flag['data'], $flag['msg']));
    }

    // 上传缩略图
    public function uploadImg()
    {
        if(request()->isAjax()){

            $file = request()->file('file');
            // 移动到框架应用根目录/public/uploads/ 目录下
            $info = $file->move(ROOT_PATH . 'public' . DS . 'upload');
            if($info){
                $src =  '/upload' . '/' . date('Ymd') . '/' . $info->getFilename();
                return json(msg(0, ['src' => $src], ''));
            }else{
                // 上传失败获取错误信息
                return json(msg(-1, '', $file->getError()));
            }
        }
    }

    /**
     * 拼装操作按钮
     * @param $id
     * @return array
     */
    private function makeButton($id)
    {
        return [
            '编辑' => [
                'auth' => 'member/memberedit',
                'href' => url('member/memberedit', ['id' => $id]),
                'btnStyle' => 'primary',
                'icon' => 'fa fa-paste'
            ],
            '删除' => [
                'auth' => 'member/memberdel',
                'href' => "javascript:memberDel(" . $id . ")",
                'btnStyle' => 'danger',
                'icon' => 'fa fa-trash-o'
            ]
        ];
    }
}
