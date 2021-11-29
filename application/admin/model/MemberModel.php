<?php

namespace app\admin\model;

use think\Model;

class MemberModel extends Model
{
    // 确定链接表名
    protected $table = 'snake_member';

    /**
     * 查询会员
     * @param $where
     * @param $offset
     * @param $limit
     */
    public function getMembersByWhere($where, $offset, $limit)
    {
        return $this->where($where)->limit($offset, $limit)->order('id desc')->select();
    }

    /**
     * 根据搜索条件获取所有的会员数量
     * @param $where
     */
    public function getAllMembers($where)
    {
        return $this->where($where)->count();
    }

    /**
     * 添加会员
     * @param $param
     */
    public function addMember($param)
    {
        try{
            $result = $this->validate('MemberValidate')->save($param);
            if(false === $result){
                // 验证失败 输出错误信息
                return msg(-1, '', $this->getError());
            }else{

                return msg(1, url('member/index'), '添加会员成功');
            }
        }catch (\Exception $e){
            return msg(-2, '', $e->getMessage());
        }
    }

    /**
     * 编辑会员信息
     * @param $param
     */
    public function editMember($param)
    {
        try{

            $result = $this->validate('MemberValidate')->save($param, ['id' => $param['id']]);

            if(false === $result){
                // 验证失败 输出错误信息
                return msg(-1, '', $this->getError());
            }else{

                return msg(1, url('member/index'), '编辑会员成功');
            }
        }catch(\Exception $e){
            return msg(-2, '', $e->getMessage());
        }
    }

    /**
     * 根据会员的id 获取会员的信息
     * @param $id
     */
    public function getOneMember($id)
    {
        return $this->where('id', $id)->find();
    }

    /**
     * 删除会员
     * @param $id
     */
    public function delMember($id)
    {
        try{

            $this->where('id', $id)->delete();
            return msg(1, '', '删除会员成功');

        }catch(\Exception $e){
            return msg(-1, '', $e->getMessage());
        }
    }

    public function memberLoginSave($param)
    {
        try{

            $result = $this->save($param, ['id' => $param['id']]);

            if(false === $result){
                // 验证失败 输出错误信息
                return msg(-1, '', $this->getError());
            }else{

                return msg(1, url('member/index'), '编辑会员成功');
            }
        }catch(PDOException $e){
            return msg(-2, '', $e->getMessage());
        }
    }
}