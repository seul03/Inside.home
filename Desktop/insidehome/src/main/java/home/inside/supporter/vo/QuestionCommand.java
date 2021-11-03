package home.inside.supporter.vo;

import java.util.Date;

public class QuestionCommand {
	private String askType ;
	private String nickname ;
	private String title ;
	private String content ;
	public String getAskType() {
		return askType;
	}
	public void setAskType(String askType) {
		this.askType = askType;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}