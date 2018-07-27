package free.dao;

import static fw.DBUtil.close;
import static free.query.FreeQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeCmtDTO;
import free.dto.FreeDTO;

public class FreeDAOImpl implements FreeDAO {

	@Override
	public int insert(FreeDTO post, Connection con) throws SQLException {
		int result = 0;
		System.out.println("�Խñ� ��� dao: " + post);

		PreparedStatement ptmt = con.prepareStatement(INSERT_POST);
		ptmt.setString(1, post.getFr_title());
		ptmt.setString(2, post.getFr_txt());
		ptmt.setString(3, post.getFr_ctg());

		result = ptmt.executeUpdate();

		close(ptmt);
		return result;
	}

	@Override
	public int update(FreeDTO post, Connection con) throws SQLException {
		int result = 0;
		System.out.println("�Խñ� ���� dao: " + post);

		PreparedStatement ptmt = con.prepareStatement(UPDATE_POST);
		ptmt.setString(1, post.getFr_title());
		ptmt.setString(2, post.getFr_txt());
		ptmt.setString(3, post.getFr_ctg());
		ptmt.setInt(4, post.getFr_no());

		result = ptmt.executeUpdate();

		close(ptmt);
		return result;
	}

	@Override
	public int delete(int fr_no, Connection con) throws SQLException {
		int result = 0;
		System.out.println("�Խñ� ���� dao: " + fr_no);

		PreparedStatement ptmt = con.prepareStatement(DELETE_POST);
		ptmt.setInt(1, fr_no);

		result = ptmt.executeUpdate();

		close(ptmt);
		return result;
	}

	@Override
	public FreeDTO read(int fr_no, Connection con) throws SQLException {
		FreeDTO post = null;
		PreparedStatement ptmt = con.prepareStatement(READ_POST);

		ptmt.setInt(1, fr_no);
		ResultSet rs = ptmt.executeQuery();

		if (rs.next()) {
			System.out.println("�Խñ� �б�");
			post = new FreeDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
					rs.getInt(6), rs.getString(7), rs.getString(8));
		}
		System.out.println("�Խñ� �б� dao: " + post);
		close(ptmt);
		return post;
	}

	@Override
	public ArrayList<FreeDTO> getPostList(Connection con) throws SQLException {
		ArrayList<FreeDTO> postlist = new ArrayList<FreeDTO>();

		FreeDTO post = null;
		System.out.println("�Խñ� ��� dao��û");
		PreparedStatement ptmt = con.prepareStatement(SELECT_POST_ALL);
		ResultSet rs = ptmt.executeQuery();

		while (rs.next()) {
			post = new FreeDTO(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getInt(4), rs.getString(5));
			postlist.add(post);
		}
		System.out.println("fr_post ArraList�� ����: " + postlist.size());

		return postlist;
	}

}