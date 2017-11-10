package cn.vote.dao;

import cn.vote.pojo.User;
import cn.vote.pojo.VoteDetailed;
import cn.vote.pojo.VoteOption;

import java.util.List;

public interface VoteOptionDao {
    /**
     * 根据选项Id查询选项所有选择的用户
     * @param voteOptionId 选项id
     * @return 用户集合
     */
    List<User> selectUsersByVoteOptionId(int voteOptionId);

    int add(VoteOption voteOption);

    int addVoteDetailed(VoteDetailed voteDetailed);

}
