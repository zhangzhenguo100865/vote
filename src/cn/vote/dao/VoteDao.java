package cn.vote.dao;

import cn.vote.pojo.Participate;
import cn.vote.pojo.User;
import cn.vote.pojo.Vote;
import cn.vote.pojo.VoteOption;
import org.springframework.stereotype.Repository;

import java.util.List;
public interface VoteDao {
    /**
     * 查询投票列表
     * @param vote 投票类
     * @return 投票类对象集合
     */
    List<Vote> select(Vote vote);

    /**
     * 查询所有投票选项
     * @param voteId 投票id
     * @return 投票选项集合
     */
    List<VoteOption> selectOptionsByVoteID(int voteId);

    /**
     * 查询所有参与本次投票的用户
     * @param voteId 投票id
     * @return 用户对象集合
     */
    List<User> selectUsersByVoteId(int voteId);

    int addParticipate(Participate participate);
}
