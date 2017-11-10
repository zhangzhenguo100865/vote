package cn.vote.dao;

import cn.vote.pojo.User;

import java.util.List;

public interface UserDao {
    /**
     * 查询用户列表
     * @param user 用户对象
     * @return 用户列表
     */
    List<User> select(User user);
}
