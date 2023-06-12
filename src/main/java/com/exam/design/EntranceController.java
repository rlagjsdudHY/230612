package com.exam.design;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EntranceController {
	
	@Autowired
	private ApplyDao applyDao;

	@RequestMapping("/")
	public @ResponseBody String root() throws Exception {
		return "Print OK!!";
	}

	// 지원서 입력양식
	@RequestMapping("/applyForm")
	public String mtdApplyForm() {
		return "apply/applyForm";
	}

	// 지원서 내용 저장
	@RequestMapping("/apply")
	public String mtdApply(
			@ModelAttribute("applyDto") ApplyDto applyDto,
			BindingResult result,
			HttpServletRequest req, 
			Model model
			) {
		
		String	page	=	"redirect:selList";
		try {
			
			System.out.println(applyDto);
			
			MotiveValidator	motiveValidator =	new	MotiveValidator();
			motiveValidator.validate(applyDto,	result);
			
			if	(result.hasErrors())	{
			page	=	"apply/applyForm";
			} else {
				
				req.setCharacterEncoding("UTF-8");
				String userName = req.getParameter("userName");
				String userPhone = req.getParameter("userPhone");
				String part = req.getParameter("part");
				String motive = req.getParameter("motive");			
				
				Map<String, String> map = new HashMap<>(); 
				map.put("item1", userName);
				map.put("item2", userPhone); 
				map.put("item3", part); 
				map.put("item4", motive);
				
				model.addAttribute(req);
				applyDao.mtdInsert(map);
			}
			
		} catch (Exception e) {
			e.getMessage();
		}
		return	page;
		//return "apply/insResult";
	}
	

	// 지원 정보 목록보기
	@RequestMapping("/selList") 
	public String mtdSelList(Model model) {
	  
	  model.addAttribute("selList", applyDao.mtdList());
	  
	  return "apply/selList"; 
	 }
	
	
	// 지원 정보 상세보기
	@RequestMapping("/selView") 
	public String mtdSelView(Model model, HttpServletRequest req) {
	  
		int num = Integer.parseInt(req.getParameter("num"));
		model.addAttribute("applyList", applyDao.mtdView(num));
	  
	  return "apply/insResult"; 
	 }
	 
	
}
