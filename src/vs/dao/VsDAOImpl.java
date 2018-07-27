package vs.dao;

import static fw.DBUtil.close;
import static vs.query.VsQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vs.dto.VsDTO;

public class VsDAOImpl implements VsDAO {

	@Override
	public int insert_vs(VsDTO post, Connection con) throws SQLException {
		System.out.println("VsDAO��û");
		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(VS_INSERT);
		ptmt.setString(1, post.getCh_title());
		ptmt.setString(2, post.getCh_optionA());
		ptmt.setString(3, post.getCh_optionB());
		ptmt.setString(4, post.getCh_txt());
		ptmt.setString(5, post.getMe_id());
		
		result = ptmt.executeUpdate();
		System.out.println(result);
		close(ptmt);
		return result;
	}

}
