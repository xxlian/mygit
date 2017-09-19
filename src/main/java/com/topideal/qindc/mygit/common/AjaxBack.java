package com.topideal.qindc.mygit.common;

/**
 * ajax 返回
 * @date 2017年8月23日 下午6:05:58 
 * @author Qin Dachang
 */
public class AjaxBack {

    //数据状态   0 成功  1 失败
    private int status;
    //描述
    private String desc;
    //路径
    private String url;

    public AjaxBack() {

    }

    public AjaxBack(int status,String desc){
        this.status=status;
        this.desc=desc;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
