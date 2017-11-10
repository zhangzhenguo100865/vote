package cn.vote.controller;

import cn.vote.pojo.User;
import cn.vote.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
@Controller
public class UserController {
    @Resource
    private UserService userService;
    @RequestMapping("/login.do")
    public String login(HttpServletRequest request,User user){
        User user1 = userService.login(user);
        if (user1!=null){
            request.getSession().setAttribute("u",user1);
            return "redirect:index.do";
        }
        request.setAttribute("ms","用户名或密码错误");
        return "index";
    }
}
