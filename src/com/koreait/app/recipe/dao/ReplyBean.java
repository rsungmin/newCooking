package com.koreait.app.recipe.dao;

public class ReplyBean {
	private int reply_num;      	
    private String reply_contents; 
    private String member_id;     
    private int rc_num;
    private String reply_file_name;
    
    public String getReply_file_name() {
		return reply_file_name;
	}
	public void setReply_file_name(String reply_file_name) {
		this.reply_file_name = reply_file_name;
	}


    
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public String getReply_contents() {
		return reply_contents;
	}
	public void setReply_contents(String reply_contents) {
		this.reply_contents = reply_contents;
	}
	public int getRc_num() {
		return rc_num;
	}
	public void setRc_num(int rc_num) {
		this.rc_num = rc_num;
	}
    
    
    
    
}
