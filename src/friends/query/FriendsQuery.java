package friends.query;

public class FriendsQuery {
	// �޽��� ����
	public static final String INSERT_MSG = "insert into message values(msg_seq.nextval, ?, ?, ?, ?, sysdate)";

	// �޽��� ��� 
	public static final String SEND_MSG = "select * from message where sender=?";
	public static final String RECIEVE_MSG = "select * from message where receiver=?";
	
	// ģ�� ���
	public static final String SELECT_FRIENDS = "select * from bd_list where me_id=?";
}
