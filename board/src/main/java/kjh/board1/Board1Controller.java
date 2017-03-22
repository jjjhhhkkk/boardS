package kjh.board1;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kjh.common.SearchVO;



@Controller
public class Board1Controller {

	@Autowired
	private Board1Service boardSvc;
	
	
	//리스트
	@RequestMapping(value = "/board1List")
	public String boardList(SearchVO searchVO,  ModelMap modelMap) throws Exception{
		searchVO.pageCalculate(boardSvc.selectBoardCount(searchVO)); 
		List<?> listview = boardSvc.selectBoardList(searchVO);
		
		modelMap.addAttribute("listview",listview);
		modelMap.addAttribute("searchVO",	searchVO);
		return "board1/boardList";
	}
	//꺄아아33

	
	//ModelAttribute는 사용자가 입력한 내용들의 이름과 지정된 클래스(boardVO)의 변수명이 일치하면 자동으로 그 내용을 담아서 반환해 준다.
	@RequestMapping(value ="/board1Save")
	public String boardSave(@ModelAttribute BoardInput boardInfo){
		if (boardInfo.getBrdno()==null  || "".equals(boardInfo.getBrdno())   ){
			boardSvc.insertBoard(boardInfo);
		}
		else{ 
			boardSvc.updateBoard(boardInfo);
		}
		return "redirect:/board1List";
	}
	
	//글읅기 오버라이딩인듯
	@RequestMapping(value ="/board1Read")
	public String boardSave(HttpServletRequest request, ModelMap modelMap){
		String brdno = request.getParameter("brdno");
		
		boardSvc.updateBoard1Read(brdno);
		BoardInput boardInfo = boardSvc.selectBoardOne(brdno);
		modelMap.addAttribute("boardInfo",boardInfo);
		
		return "board1/boardRead";
		
		
	}
	
//	앞서 글쓰기에서는 @ModelAttribute를 이용하여 boardVO 클래스로 받아왔지만, 
//	여기에서는 파라메터가 한개라서 request로 받아온다.
//	데이터 베이스에서 글번호에 해당하는 내용을 가져오기 위해 서비스로 넘겨준다. 
//	SQL이 실행되어 하나의 글(행)이 반환되면 ModelMap을 이용하여
//	JSP에 값을 넘겨서 적절한 모습으로 사용자에게 보여 주게 된다.
	//boardInfo로 jsp 파일로 넘겨준다
//	@RequestMapping(value ="/board1Read")
//	public String boardRead(HttpServletRequest request, ModelMap modelMap){
//		String brdno=request.getParameter("brdno");
//		
//
//		BoardInput boardInfo = boardSvc.selectBoardOne(brdno);
//		
//		modelMap.addAttribute("boardInfo",boardInfo);
//		
//		return "board1/boardRead";
//	}
	
	//글쓰기와 수정 합침
	@RequestMapping(value = "/board1Form")
	public String boardForm(HttpServletRequest request, ModelMap modelMap){
		String brdno = request.getParameter("brdno");
    	if (brdno!=null) {
    		BoardInput boardInfo = boardSvc.selectBoardOne(brdno);
        
    		modelMap.addAttribute("boardInfo", boardInfo);
    	}
    	
		return "board1/boardForm";
	}
	

//	@RequestMapping(value = "/board1Update")
//	public String boardUpdate(HttpServletRequest request, ModelMap modelMap){
//		
//		String brdno=request.getParameter("brdno");
//		BoardInput boardInfo = boardSvc.selectBoardOne(brdno);
//		modelMap.addAttribute("boardInfo",boardInfo);
//		return "board1/boardUpdate";
//	}
//
////	수정 컨트롤에서는 글쓰기의 저장 컨트롤과 같이 boardVO로 사용자의 입력값을 받아와서 
////	서비스의 updateBoard을 호출하여 UPDATE 문을 실행하여 테이블에 저장한다.
//	
//	@RequestMapping(value="/board1UpdateSave")
//	public String board1UpdateSave(@ModelAttribute BoardInput boardInfo){
//		boardSvc.updateBoard(boardInfo);
//		return "redirect:/board1List";
//	}
	

	@RequestMapping(value ="/board1Delete")
	public String boardDelete(HttpServletRequest request){
		
		String brdno = request.getParameter("brdno");
		boardSvc.deleteBoardOne(brdno);
		return "redirect:/board1List";
	}
	
	
	
	
}
