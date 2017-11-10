package cn.vote.pojo;


import java.util.List;

public class VoteOption {

    private Integer voteOptionId;
    private String voteOptionTitle;
    private Integer voteId;
    /**
     * 投票者
     */
    private List<User> users;
    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public Integer getVoteOptionId() {
        return voteOptionId;
    }

    public void setVoteOptionId(Integer voteOptionId) {
        this.voteOptionId = voteOptionId;
    }

    public String getVoteOptionTitle() {
        return voteOptionTitle;
    }

    public void setVoteOptionTitle(String voteOptionTitle) {
        this.voteOptionTitle = voteOptionTitle;
    }

    public Integer getVoteId() {
        return voteId;
    }

    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
    }
}
