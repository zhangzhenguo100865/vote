package cn.vote.pojo;

public class VoteDetailed {
    private Integer voteDetailedId;
    private Integer voteOptionId;
    private Integer userId;

    public Integer getVoteDetailedId() {
        return voteDetailedId;
    }

    public void setVoteDetailedId(Integer voteDetailedId) {
        this.voteDetailedId = voteDetailedId;
    }

    public Integer getVoteOptionId() {
        return voteOptionId;
    }

    public void setVoteOptionId(Integer voteOptionId) {
        this.voteOptionId = voteOptionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
