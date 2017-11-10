package cn.vote.controller;

import cn.vote.pojo.User;
import cn.vote.pojo.Vote;
import cn.vote.service.VoteService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class VoteController {
    @Resource
    private VoteService voteService;

    @RequestMapping("/index.do")
    public String index(HttpServletRequest request){
        request.setAttribute("votes",voteService.getVotes(null));
        return "index";
    }
    @RequestMapping("/single.do")
    public String single(HttpServletRequest request,Vote vote){
        request.setAttribute("votes",voteService.getVotes(null));
        request.setAttribute("vote1",voteService.getVotes(vote).get(0));
        return "single";
    }
    @RequestMapping("/tou.do")
    @ResponseBody
    public String tou(String[] opts, Integer voteId, HttpSession session){
        User user=(User)session.getAttribute("u");
        voteService.vote(opts,voteId,user.getUserId());
        return opts.length+"";
    }
}
