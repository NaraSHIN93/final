package reservation;

import java.util.HashMap;
import java.util.List;

public interface ReservationDAO {
	public List<AirinfoDTO> deptListMethod(ReservationDTO dto);
	public List<AirinfoDTO> returnListMethod(ReservationDTO dto);
	public String cityNameMethod(String city_code);
	public void clientResMethod(ReservationDTO rdto);
	public void guestResMethod(ReservationDTO rdto);
	public void seatUptMethod(String flight);
	public int rvChkMethod(String rv_code);
	public int priceMethod(String rv_code);
	public void pointMethod(HashMap<Object, Object> map);
}
