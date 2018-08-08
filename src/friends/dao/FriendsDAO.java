package friends.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import friends.dto.BdDTO;
import friends.dto.MsgDTO;

public interface FriendsDAO {
	
	int insertMsg(MsgDTO msg, Connection con) throws SQLException; 	// �޽��� �ۼ�
	
	ArrayList<MsgDTO> readMsg(String option, String me_id, Connection con) throws SQLException;	// �޽��� ���

	int insertBd(BdDTO bd, Connection con) throws SQLException; // ģ�� �߰�
	
	int deleteBd(BdDTO bd, Connection con) throws SQLException; // ģ�� ����
	
}
