package mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//http://localhost:8090/myfinal/myreservation.do

@Controller
public class MyReservationController {
	private ReservationService service;
	
	public MyReservationController() {
		// TODO Auto-generated constructor stub
	}
	
	public void setService(ReservationService service) {
		this.service = service;
	}
	
	@RequestMapping("myreservation.do")
	public ModelAndView myresList(String user_id,HttpServletRequest req) {
		ModelAndView mav=new ModelAndView();
		HttpSession session=req.getSession();
		
		System.out.println(service.reservationProcess("test01"));
		mav.addObject("myres",service.reservationProcess("test01"));
		mav.setViewName("mypage/myreservation");
		
		return mav;
	}
	
}// class