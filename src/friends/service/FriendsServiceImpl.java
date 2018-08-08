package friends.service;

import static fw.DBUtil.close;
import static fw.DBUtil.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import friends.dao.FriendsDAO;
import friends.dao.FriendsDAOImpl;
import friends.dto.BdDTO;
import friends.dto.MsgDTO;

public class FriendsServiceImpl implements FriendsService {

	@Override
	public int insertMsg(MsgDTO msg) {	// �޼��� �ۼ�
		System.out.println("Service��û");
		int result = 0;
		Connection con = null;		
		FriendsDAO dao = new FriendsDAOImpl();	
		try {
			con = getConnect();
			result = dao.insertMsg(msg, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}

	@Override
	public ArrayList<MsgDTO> readMsg(String option, String me_id) {	// �޽��� ���
		System.out.println("Service��û");
		ArrayList<MsgDTO> msgs = null;
		FriendsDAO dao = new FriendsDAOImpl();
		Connection con = null;
		try{
			con = getConnect();
			msgs = dao.readMsg(option, me_id, con);
		} catch (SQLException e){
			e.printStackTrace();
		}
		close(con);
		return msgs;
	}

	@Override
	public int insertBd(BdDTO bd) {	// ģ�� �߰�
		int result = 0;
		Connection con = null;		
		FriendsDAO dao = new FriendsDAOImpl();	
		try {
			con = getConnect();
			result = dao.insertBd(bd, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}

	@Override
	public int deleteBd(BdDTO bd) {
		int result = 0;
		Connection con = null;		
		FriendsDAO dao = new FriendsDAOImpl();	
		try {
			con = getConnect();
			result = dao.deleteBd(bd, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}
}
