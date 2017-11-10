package cn.vote.service.impl;

import cn.vote.dao.VoteDao;
import cn.vote.dao.VoteOptionDao;
import cn.vote.pojo.Participate;
import cn.vote.pojo.Vote;
import cn.vote.pojo.VoteDetailed;
import cn.vote.service.VoteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("voteService")
public class VoteServiceImpl implements VoteService{
    @Resource
    private VoteDao voteDao;
    @Resource
    private VoteOptionDao voteOptionDao;
    @Override
    public List<Vote> getVotes(Vote vote) {
        return voteDao.select(vote);
    }

    @Override
    public void vote(String[] opts, Integer voteId, Integer uid) {
        for (int i = 0; i < opts.length; i++) {
            VoteDetailed voteDetailed=new VoteDetailed();
            voteDetailed.setUserId(uid);
            voteDetailed.setVoteOptionId(Integer.valueOf(opts[i]));
            voteOptionDao.addVoteDetailed(voteDetailed);
        }
        Participate participate=new Participate();
        participate.setUserId(uid);
        participate.setVoteId(voteId);
        voteDao.addParticipate(participate);
    }
}
