package com.bookiebazzar.utils.objects;

public class ValidationMsg {
    private int state;
    private String msg;
    
    public ValidationMsg(int state, String msg) {
        this.state = state;
        this.msg = msg;
    }
    public int getState() {
        return state;
    }
    public void setState(int state) {
        this.state = state;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    
}
