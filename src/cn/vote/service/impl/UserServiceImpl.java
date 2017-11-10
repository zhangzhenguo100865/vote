package cn.vote.service.impl;

import cn.vote.dao.UserDao;
import cn.vote.pojo.User;
import cn.vote.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    @Override
    public User login(User user) {
        List<User> users = userDao.select(user);
        if (users!=null&&users.size()==1){
            return users.get(0);
        }
        return null;
    }
}
