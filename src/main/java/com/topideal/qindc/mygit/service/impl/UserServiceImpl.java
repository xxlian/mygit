/**  
 * @copyright:Copyright Corporation 2017 
 * @company:Guangdong Top Ideal SCM Service Group Co., Ltd. 
 * @date 2017年8月13日 上午3:05:35 
 * @author Qin Dachang 
 */
package com.topideal.qindc.mygit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.topideal.qindc.mygit.dao.UserDao;
import com.topideal.qindc.mygit.po.User;
import com.topideal.qindc.mygit.service.UserService;

/**  
 * 用户服务实现
 * @date 2017年8月13日 上午3:05:35 
 * @author Qin Dachang 
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao dao;

	/* (non-Javadoc)
	 * @param id
	 * @return
	 * @throws Exception 
	 * @see com.qindc.business.service.UserService#getUserById(int)
	 */
	@Override
	public User getUserById(int id) throws Exception {
		return dao.getUserById(id);  
	}

	/* (non-Javadoc)
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception 
	 * @see com.topideal.zhuopuxin.zpx.login.service.LoginService#login(java.lang.String, java.lang.String)
	 */
	@Override
	public User login(String username, String password) throws Exception {
		return dao.login(username, password);
	}

}
