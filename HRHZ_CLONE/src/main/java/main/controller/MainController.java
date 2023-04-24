package main.controller;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@GetMapping(value="")
	public String main() {
		return "index";
	}

	@GetMapping(value="/category")
	public String category() {
		return "/views/category/category";
	}
	
	@GetMapping(value="/brand")
	public String brand() {
		return "/views/brand/brand";
	}
	
	@GetMapping(value="/myPage")
	public String mypage() {
		return "/views/my/myPage";
	}
	
	@GetMapping(value="/signIn")
	public String siginIn() {
		return "/views/member/signIn";
	}
	
    
    @PostMapping(value = "/bestProduct")
    @ResponseBody
    public List<Map<String, Object>> bestProduct(HttpSession session) throws Exception {
    	return mainService.getBestProductList();
    }
    
    @PostMapping(value = "/top100Product")
    @ResponseBody
    public List<Map<String, Object>> top100Product(HttpSession session) throws Exception {
    	return mainService.getBestProductList();
    }

	
}
