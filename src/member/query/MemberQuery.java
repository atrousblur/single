package member.query;

public class MemberQuery {
	public static final String USER_INSERT
				="insert into member "
				+ "values(?,?,?,?,?,?,?,?,?,?,0,0,'����',?,'t',?,?,0)";
	public static final String LOGIN
				="select * from member where me_id=? and me_pwd=?";
	public static final String USERINFO
				="select * from member where me_id=?";
	public static final String USER_UPDATE
				="update member "
				+ "set me_pwd=?, me_phone=?, "
				+ "me_telnum=?, me_telchk=?, me_email=?, "
				+ "me_addr=?, me_character=?, me_img=? "
				+ "where me_id=?";

}
