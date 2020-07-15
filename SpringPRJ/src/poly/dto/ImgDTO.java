package poly.dto;

public class ImgDTO {

	private String user;	//사용자 권한 확인
	private String img_no;	//사진번호
	private String page;	//페이지명
	private String title;	//제목
	private String img;	//사진
	private String img_01;	//사진_01
	private String reg_dt;	//등록일 
	private String tag;	//테그
	private String content;	//내용
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getImg_no() {
		return img_no;
	}
	public void setImg_no(String img_no) {
		this.img_no = img_no;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getImg_01() {
		return img_01;
	}
	public void setImg_01(String img_01) {
		this.img_01 = img_01;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
