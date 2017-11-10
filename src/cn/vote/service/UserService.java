package cn.vote.service;

import cn.vote.pojo.User;

public interface UserService {
    /**
     * 登陆
     * @param user 用户对象
     * @return 用户对象
     */
    User login(User user);
}
