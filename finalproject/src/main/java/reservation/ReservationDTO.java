package reservation;

public class ReservationDTO {
	private String rv_num;
	private int payment_chk;
	private String airinfo_flight;
	private String client_id;
	private int p_count;
	private String non_name;
	private String non_phonenum;
	private String non_email;
	private String non_birth;
	private String non_pass;
	private String guestchk;
	private String city_code_dep;
	private String city_code_arv;
	private String dep_date;
	private String arv_date;
	private String dep_airinfo_flight;
	private String arv_airinfo_flight;
	
	public String getDep_airinfo_flight() {
		return dep_airinfo_flight;
	}

	public void setDep_airinfo_flight(String dep_airinfo_flight) {
		this.dep_airinfo_flight = dep_airinfo_flight;
	}

	public String getArv_airinfo_flight() {
		return arv_airinfo_flight;
	}

	public void setArv_airinfo_flight(String arv_airinfo_flight) {
		this.arv_airinfo_flight = arv_airinfo_flight;
	}

	public ReservationDTO() {
		
	}

	public String getGuestchk() {
		return guestchk;
	}

	public void setGuestchk(String guestchk) {
		this.guestchk = guestchk;
	}

	public String getCity_code_dep() {
		return city_code_dep;
	}

	public void setCity_code_dep(String city_code_dep) {
		this.city_code_dep = city_code_dep;
	}

	public String getCity_code_arv() {
		return city_code_arv;
	}

	public void setCity_code_arv(String city_code_arv) {
		this.city_code_arv = city_code_arv;
	}

	public String getDep_date() {
		return dep_date;
	}

	public void setDep_date(String dep_date) {
		this.dep_date = dep_date;
	}

	public String getArv_date() {
		return arv_date;
	}

	public void setArv_date(String arv_date) {
		this.arv_date = arv_date;
	}

	public String getRv_num() {
		return rv_num;
	}

	public void setRv_num(String rv_num) {
		this.rv_num = rv_num;
	}

	public int getPayment_chk() {
		return payment_chk;
	}

	public void setPayment_chk(int payment_chk) {
		this.payment_chk = payment_chk;
	}

	public String getAirinfo_flight() {
		return airinfo_flight;
	}

	public void setAirinfo_flight(String airinfo_flight) {
		this.airinfo_flight = airinfo_flight;
	}

	public String getClient_id() {
		return client_id;
	}

	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}

	public int getP_count() {
		return p_count;
	}

	public void setP_count(int p_count) {
		this.p_count = p_count;
	}

	public String getNon_name() {
		return non_name;
	}

	public void setNon_name(String non_name) {
		this.non_name = non_name;
	}

	public String getNon_phonenum() {
		return non_phonenum;
	}

	public void setNon_phonenum(String non_phonenum) {
		this.non_phonenum = non_phonenum;
	}

	public String getNon_email() {
		return non_email;
	}

	public void setNon_email(String non_email) {
		this.non_email = non_email;
	}

	public String getNon_birth() {
		return non_birth;
	}

	public void setNon_birth(String non_birth) {
		this.non_birth = non_birth;
	}

	public String getNon_pass() {
		return non_pass;
	}

	public void setNon_pass(String non_pass) {
		this.non_pass = non_pass;
	}
	
}