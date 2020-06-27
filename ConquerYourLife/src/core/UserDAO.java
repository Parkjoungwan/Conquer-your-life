package core;
import java.sql.*;

import org.json.simple.JSONObject;

import util.ConnectionPool;

public class UserDAO {
	public String login(String uid, String upass) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();

			String sql = "SELECT id, password, AccountIdx FROM user WHERE id = ?";
			st = conn.prepareStatement(sql);
			st.setString(1, uid);

			String code = "OK";
			rs = st.executeQuery();

			if(!rs.next()){
				code = "NA";	//can't find UserData
				return code;
			}
			
			if(!rs.getString("password").equals(upass)){
				code = "PS";	//wrong password
				return code;
			}
			else {
				JSONObject jsonobj = new JSONObject();
				jsonobj.put("id", rs.getString("id"));
				jsonobj.put("AccountIndex", rs.getString("AccountIdx"));
				code = jsonobj.toJSONString();
			} 
						
			return code;
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}
	
	public String signup(String uid, String upass) throws Exception {
		
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "SELECT id FROM user WHERE id = '"+ uid + "'";
			st = conn.prepareStatement(sql);
	
			String code = "OK";
			rs = st.executeQuery(sql);
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
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}
}
