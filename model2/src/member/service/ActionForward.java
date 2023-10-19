package member.service;

//forward 위한 일종의 DTO
public class ActionForward {
	private boolean redirect;   //포워딩 방식 설정(redirect, dispatcher 중 택일)
	private String path;        //포워딩 페이지명 설정

	//boolean type Getter : is + Property
	public boolean isRedirect() {
		return redirect;
	}

	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
}
