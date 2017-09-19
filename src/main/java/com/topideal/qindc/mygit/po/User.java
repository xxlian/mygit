/**  
 * @copyright:Copyright Corporation 2017 
 * @company:Guangdong Top Ideal SCM Service Group Co., Ltd. 
 * @date 2017年3月28日 下午4:39:54 
 * @author Qin Dachang 
 */
package com.topideal.qindc.mygit.po;

/**  
 * 用户信息
 * @date 2017年3月28日 下午4:39:54 
 * @author Qin Dachang 
 */
public class User {

	//id
	private int id; 
	//用户名
	private String userName;
	//密码
	private String passWord;

	/**
	 * Getter
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Setter
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * Getter
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * Setter
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * Getter
	 * @return the passWord
	 */
	public String getPassWord() {
		return passWord;
	}

	/**
	 * Setter
	 * @param passWord the passWord to set
	 */
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
