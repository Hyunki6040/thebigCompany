package poly.dto;

public class SingleDTO {

	private String user;	//사용자 권한 확인
	private String single_no;	//단일번호
	private String page;	//페이지명
	private String cls;	//분류
	private String content;	//내용
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getSingle_no() {
		return single_no;
	}
	public void setSingle_no(String single_no) {
		this.single_no = single_no;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getCls() {
		return cls;
	}
	public void setCls(String cls) {
		this.cls = cls;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
