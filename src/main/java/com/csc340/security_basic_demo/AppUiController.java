package com.csc340.security_basic_demo;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppUiController {
  @GetMapping("/")
  public String index() {
    return "home";
  }

  @GetMapping("/home")
  public String home() {
    return "home";
  }

  @GetMapping("/admin")
  public String adminHello(Model model) {
    String name = SecurityContextHolder.getContext().getAuthentication().getName();
    model.addAttribute("currentUser", name);
    return "admin";
  }

  @GetMapping("/mod")
  public String modHello(Model model) {
    String name = SecurityContextHolder.getContext().getAuthentication().getName();
    model.addAttribute("currentUser", name);
    return "mod";
  }

  @GetMapping("/hello")
  public String hello(Model model) {
    String name = SecurityContextHolder.getContext().getAuthentication().getName();
    model.addAttribute("currentUser", name);
    return "hello";
  }

  @GetMapping("/login")
  public String login() {
    return "login";
  }

  @GetMapping("/403")
  public String _403() {
    return "403";
  }
}
