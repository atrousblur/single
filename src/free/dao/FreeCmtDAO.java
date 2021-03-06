package free.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeCmtDTO;

public interface FreeCmtDAO {
	int insert(FreeCmtDTO cmt,Connection con) throws SQLException; // ��� ���
	
	int update(FreeCmtDTO cmt,Connection con) throws SQLException; // ��� ����
	
	int delete(int fr_cmt_no,Connection con) throws SQLException; // ��� ����
	
	int count(int fr_no, Connection con) throws SQLException; // ��� ����
	
	ArrayList<FreeCmtDTO> getCmtList(int fr_no, Connection con) throws SQLException;	// ��� ���
	
}
