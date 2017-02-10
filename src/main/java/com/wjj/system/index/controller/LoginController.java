package com.wjj.system.index.controller;

import com.wjj.system.user.entity.User;
import com.wjj.system.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * @author 作者：wangjj
 * @version 创建时间：2017-01-22 14:32
 * @discription 类说明：登录注册Controller
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    private User user = null;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value="/register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public String doLogin(Model model,
                          @RequestParam(value="username") String username,
                          @RequestParam(value="password") String password,
                          RedirectAttributes redirectAttributes, HttpSession session) {
        try {
            user = userService.login(username, password);
            redirectAttributes.addFlashAttribute("user", user);
        } catch (Exception e){
            if (e.getMessage().indexOf("user is not exist") != -1) {
                redirectAttributes.addFlashAttribute("message", "该用户不存在！");
                return "redirect:/login";
            }

            if (e.getMessage().indexOf("password is wrong") != -1) {
                redirectAttributes.addFlashAttribute("message", "密码错误！");
                return "redirect:/login";
            }
        }
        session.setAttribute("user", user);
        return "redirect:/index";
    }

    @RequestMapping(value="/doRegister", method=RequestMethod.POST)
    public String doRegister(Model model) {

        return "redirect:/login";
    }

    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/login";
    }
}