package core;
import java.sql.*;

import org.json.simple.JSONObject;

//import util.ConnectionPool;

public class UserDAO {
	public String signup(String uid, String upass) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ConquerYourLife", "root", "1111");
		Statement st = conn.createStatement();
		
		String sql = "SELECT id FROM user WHERE id = '" + uid + "'";
		String code = "OK";
		ResultSet rs = st.executeQuery(sql);
		if(rs.next()){
			code = "EX";
		}
		else {
			sql = "INSERT INTO user(id, password) VALUES(";
			sql += "'" + uid + "', ";
			sql += "'" + upass + "' ";
			sql += ")";
			
			int cnt  = st.executeUpdate(sql);
			code = (cnt > 0) ? "OK" : "ER";			
		}
		return code;
	}
}
