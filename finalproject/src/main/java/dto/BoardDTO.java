package dto;

<<<<<<< HEAD
import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO {
	private int b_num;
	private String title;
	private int b_category_c_num;
	private String content;
	private String client_id;
	private Date upload_date;
	private int viewcount;
	private int b_like;
	private int city_code;
	
	private List<FilesDTO> fileList;
	private List<MultipartFile> filename;
	
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getB_category_c_num() {
		return b_category_c_num;
	}
	public void setB_category_c_num(int b_category_c_num) {
		this.b_category_c_num = b_category_c_num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public Date getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	public int getB_like() {
		return b_like;
	}
	public void setB_like(int b_like) {
		this.b_like = b_like;
	}
	public int getCity_code() {
		return city_code;
	}
	public void setCity_code(int city_code) {
		this.city_code = city_code;
	}
	public List<FilesDTO> getFileList() {
		return fileList;
	}
	public void setFileList(List<FilesDTO> fileList) {
		this.fileList = fileList;
	}
	public List<MultipartFile> getFilename() {
		return filename;
	}
	public void setFilename(List<MultipartFile> filename) {
		this.filename = filename;
	}
	
=======
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO {
	private int b_num;
	private String content;
	private MultipartFile filename;
	private int viewcount;
	private int b_like;
	private String client_id;
	private String city_code;
	private int c_num;
	private String title;
	private Date date;
	
	public BoardDTO() {
		
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public MultipartFile getFilename() {
		return filename;
	}
	
	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public int getB_like() {
		return b_like;
	}

	public void setB_like(int b_like) {
		this.b_like = b_like;
	}

	public String getClient_id() {
		return client_id;
	}

	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}

	public String getCity_code() {
		return city_code;
	}

	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}

	public int getC_num() {
		return c_num;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
>>>>>>> refs/remotes/origin/Nara
	
}
