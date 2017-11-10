package cn.vote.pojo;


import java.util.Date;
import java.util.List;

public class Vote {
    private Integer voteId;
    private String voteTitle;
    private String voteDescribe;
    private Integer voteOptionMax;
    private User user;
    private Integer voteState;
    private Integer anonymous;
    private Date voteDate;
    private List<User> users;
    /**
     * 投票选项
     */
    private List<VoteOption> voteOptions;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<VoteOption> getVoteOptions() {
        return voteOptions;
    }

    public void setVoteOptions(List<VoteOption> voteOptions) {
        this.voteOptions = voteOptions;
    }

    public Integer getVoteId() {
        return voteId;
    }

    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
    }

    public String getVoteTitle() {
        return voteTitle;
    }

    public void setVoteTitle(String voteTitle) {
        this.voteTitle = voteTitle;
    }

    public String getVoteDescribe() {
        return voteDescribe;
    }

    public void setVoteDescribe(String voteDescribe) {
        this.voteDescribe = voteDescribe;
    }

    public Integer getVoteOptionMax() {
        return voteOptionMax;
    }

    public void setVoteOptionMax(Integer voteOptionMax) {
        this.voteOptionMax = voteOptionMax;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getVoteState() {
        return voteState;
    }

    public void setVoteState(Integer voteState) {
        this.voteState = voteState;
    }

    public Integer getAnonymous() {
        return anonymous;
    }

    public void setAnonymous(Integer anonymous) {
        this.anonymous = anonymous;
    }

    public Date getVoteDate() {
        return voteDate;
    }

    public void setVoteDate(Date voteDate) {
        this.voteDate = voteDate;
    }
}
