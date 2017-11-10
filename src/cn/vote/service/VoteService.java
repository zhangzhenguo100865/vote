package cn.vote.service;

import cn.vote.pojo.Vote;

import java.util.List;

public interface VoteService {
    /**
     * 查询投票列表
     * @param vote 投票类
     * @return 投票类对象集合
     */
    List<Vote> getVotes(Vote vote);

    void vote(String[] opts,Integer voteId,Integer uid);
    int addVote();
}
