/**  
 * @copyright:Copyright Corporation 2017 
 * @company:Guangdong Top Ideal SCM Service Group Co., Ltd. 
 * @date 2017年8月13日 上午3:04:20 
 * @author Qin Dachang 
 */
package com.topideal.qindc.mygit.service;

import com.topideal.qindc.mygit.po.User;

/**  
 * 
 * 用户信息服务
 * @date 2017年8月13日 上午3:04:20 
 * @author Qin Dachang 
 */
public interface UserService {
	
	/**
	 * 用户登录服务
	 * @date 2017年3月28日 下午5:17:41 
	 * @author Qin Dachang
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	public User login(String username, String password) throws Exception;

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
