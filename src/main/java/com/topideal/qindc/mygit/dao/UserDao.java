/**  
 * @copyright:Copyright Corporation 2017 
 * @company:Guangdong Top Ideal SCM Service Group Co., Ltd. 
 * @date 2017年8月13日 上午3:06:42 
 * @author Qin Dachang 
 */
package com.topideal.qindc.mygit.dao;

import org.apache.ibatis.annotations.Param;

import com.topideal.qindc.mygit.po.User;

/**  
 * 用户dao
 * @date 2017年8月13日 上午3:06:42 
 * @author Qin Dachang 
 */
public interface UserDao {
	
	/**
	 * 登录方法
	 * @date 2017年3月28日 下午5:19:19 
	 * @author Qin Dachang
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	public User login(@Param("username")String username, @Param("password")String password) throws Exception;

	/**
	 * 根据ID查询用户信息
	 * @date 2017年8月13日 上午3:05:04 
	 * @author Qin Dachang
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public User getUserById(int id) throws Exception;

}
