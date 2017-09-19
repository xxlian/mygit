/**  
 * @copyright:Copyright Corporation 2017 
 * @company:Guangdong Top Ideal SCM Service Group Co., Ltd. 
 * @date 2017年3月27日 下午5:04:24 
 * @author Qin Dachang 
 */
package com.topideal.qindc.mygit.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.topideal.qindc.mygit.common.AjaxBack;
import com.topideal.qindc.mygit.po.User;
import com.topideal.qindc.mygit.service.UserService;



/**  
 * 登录控制类
 * @date 2017年3月27日 下午5:04:24 
 * @author Qin Dachang 
 */
@Controller
public class LoginController {
	
	protected static Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private UserService userService;
	
	/**
	 * 登录页面
	 * @date 2017年8月14日 下午3:30:40 
	 * @author Qin Dachang
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(HttpSession session){
		if(session.getAttribute("user") != null){
			return "index";
		}
		return "redirect:login.jsp";
	}
	
	/**
	 * 登录校验
	 * @date 2017年3月28日 下午5:29:23 
	 * @author Qin Dachang
	 * @param username
	 * @param password
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
    public @ResponseBody AjaxBack login(Model model, String username, String password, HttpSession session) {
		AjaxBack back = new AjaxBack(0, "success");
		if (StringUtils.isNotBlank(username) && StringUtils.isNotEmpty(password)) {
			try {
				User user = userService.login(username, password);
				if (user != null) {
					session.setAttribute("user", user);
					back.setStatus(1);
		            return back;
				}
			} catch (Exception e) {
				logger.error("用户登录异常:", e);
				e.printStackTrace();
			}
		}
		return back;
    }
	
	/**
	 * 用户退出方法
	 * @date 2017年8月12日 下午7:50:24 
	 * @author Qin Dachang
	 * @return
	 */
	@RequestMapping(value = "/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login.jsp";
	}
	

}
