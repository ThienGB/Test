package util;

import java.sql.Connection;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
public class example {

	public static ResultSet getStudentrs() throws SQLException {
		
		Connection conn = JDBCUtil.getConnection();
		
		String query = "SELECT * FROM student";
		Statement statement = conn.createStatement();
		ResultSet rs = statement.executeQuery(query);
//		while (rs.next()) {
//			System.out.println(rs.getInt(1) + " " + rs.getString(2));
//		}
	
		return rs;
	}
//	public static void main(String[] args) throws SQLException {
//		ResultSet rs = getStudentrs();
//	}

}
