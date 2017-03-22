package kjh.board1;

public class BoardInput {

	private String brdno;
	private String brdtitle;
	private String brdwriter;
	private String brdmemo;
	private String brddate;
	private String brdhit;
	private String brddeleteflag;
	
	public String getBrdno() {
		return brdno;
	}
	public void setBrdno(String brdno) {
		this.brdno = brdno;
	}
	public String getBrdtitle() {
		return brdtitle;
	}
	public void setBrdtitle(String brdtitle) {
		this.brdtitle = brdtitle;
	}
	public String getBrdwriter() {
		return brdwriter;
	}
	public void setBrdwriter(String brdwriter) {
		this.brdwriter = brdwriter;
	}
	public String getBrdmemo() {
		return brdmemo;
	}
	public void setBrdmemo(String brdmemo) {
		this.brdmemo = brdmemo;
	}
	public String getBrddate() {
		return brddate;
	}
	public void setBrddate(String brddate) {
		this.brddate = brddate;
	}
	public String getBrdhit() {
		return brdhit;
	}
	public void setBrdhit(String brdhit) {
		this.brdhit = brdhit;
	}
	public String getBrddeleteflag() {
		return brddeleteflag;
	}
	public void setBrddeleteflag(String brddeleteflag) {
		this.brddeleteflag = brddeleteflag;
	}
	@Override
	public String toString() {
		return "BoardInput [brdno=" + brdno + ", brdtitle=" + brdtitle + ", brdwriter=" + brdwriter + ", brdmemo="
				+ brdmemo + ", brddate=" + brddate + ", brdhit=" + brdhit + ", brddeleteflag=" + brddeleteflag + "]";
	}

	
	

}
