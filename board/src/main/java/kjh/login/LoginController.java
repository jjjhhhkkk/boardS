package kjh.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	/**
	 * 가상의 로그인체크 컨트롤러
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request){
	    String returnURL = "";
	    //웹페이지에서받은 아이디,패스워드 일치시 admin 세션key 생성
	    if(request.getParameter("id").equals("admin") && request.getParameter("password").equals("1234")) {
	        Map<String, Object> map = new HashMap<String,Object>();
	        map.put("admin_id", "admin");
	        map.put("admin_name", "관리자");
	        request.getSession().setAttribute("admin", map);
	        returnURL = "redirect:/admin_main";
	    //일치하지 않으면 로그인페이지 재이동
	    }else {
	        returnURL = "redirect:/";
	    }
	    return returnURL;
	}
	     
	     
	/**
	 * 관리자메인 컨트롤러
	 * @return
	 */
	@RequestMapping(value = "/admin_main")
	public String admin_main(){
	    return "login/admin_main";
	}

}
