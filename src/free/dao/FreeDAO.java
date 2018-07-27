package free.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeCmtDTO;
import free.dto.FreeDTO;

public interface FreeDAO {
	int insert(FreeDTO post,Connection con) throws SQLException; // �Խñ� ���
	
	int update(FreeDTO post,Connection con) throws SQLException; // �Խñ� ����
	
	int delete(int fr_no,Connection con) throws SQLException; // �Խñ� ����
	
	FreeDTO read(int fr_no,Connection con) throws SQLException; // �Խñ� �б�

	ArrayList<FreeDTO> getPostList(Connection con) throws SQLException;	// �Խñ� ��ü ���

}
