package vs.query;

public class VsQuery {
	
	// vs�Խñ� ����
	public static final String INSERT_POST = "insert into vs_board values(vs_seq.nextval, ?, ?, ?, ?, ?, 0, 0, sysdate)";
	
	// �Խñ� ��� 
	public static final String READ_POSTS = "select * from vs_board";

}
