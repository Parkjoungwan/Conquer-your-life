package core;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import util.ConnectionPool;

public class FeedDAO {
	public String insert(String uid, String feed) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			synchronized(this){
				String sql = "SELECT AUTO_INCREMENT FROM information_schema.TABLES ";
				sql += "WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'feed'";
				st = conn.prepareStatement(sql);
				rs = st.executeQuery();
				
				if(!rs.next()) return "ER";
				
				int feedNo = rs.getInt(1);
				
				JSONObject jsonobj = (JSONObject)(new JSONParser()).parse(feed);
				jsonobj.put("no", feedNo);
				
				sql = "INSERT INTO feed(id, content) VALUES ( ?,?)";
				st = conn.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, jsonobj.toJSONString());
				
				int cnt = st.executeUpdate();
				return (cnt==0) ? "ER" : "OK";
			}
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}

	public String fetch(String uid) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "SELECT content FROM feed WHERE id = ? ORDER BY ts DESC LIMIT 20";
			st = conn.prepareStatement(sql);
			st.setString(1, uid);

			String res = "[";
			int cnt = 0;
			
			rs = st.executeQuery();
			while(rs.next()) {
				if(cnt++ > 0) res += ",";
				res += rs.getString("content");
			}
			res += "]";
			return res;
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}

	public String delete(String no) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "DELETE FROM feed WHERE no = ?";
			st = conn.prepareStatement(sql);
			st.setString(1, no);
			int cnt =  st.executeUpdate();
			return (cnt == 0) ? "ER" : "OK";
		}
		finally{
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}
	

	public String update(String no, String feed) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			String sql = "UPDATE feed SET content = ? WHERE NO = ?";
			st = conn.prepareStatement(sql);
			st.setString(1, feed);
			st.setString(2, no);
			int cnt =  st.executeUpdate();
			return (cnt == 0) ? "ER" : "OK";
		}
		finally{
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}
	
	public String AddNation(String uid, String Name) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			synchronized(this){
				String sql = "SELECT CountryIndex FROM country WHERE AccountIdx = ?";
				st = conn.prepareStatement(sql);
				st.setString(1, uid);
				
				rs = st.executeQuery();
				String code = "OK";
				
				if(rs.next()){
					code = "EX";	//can't find UserData
					return code;
				}


				sql = "INSERT INTO country(AccountIdx, Name) VALUES(";
				sql += "'" + uid + "', ";
				sql += "'" + Name + "' ";
				sql += ")";
				
				int cnt  = st.executeUpdate(sql);
				code = (cnt > 0) ? "OK" : "ER";		
				if(cnt <= 0){
					code = "ER";
					return code;
				}
				
				
				sql = "SELECT CountryIndex FROM country WHERE AccountIdx = ?";
				st = conn.prepareStatement(sql);
				st.setString(1, uid);
				
				rs = st.executeQuery();
				
				if(!rs.next()){
					code = "ER";	//can't find UserData
				}
				else {
					JSONObject jsonobj = new JSONObject();
					jsonobj.put("CountryIndex", rs.getInt("CountryIndex"));				
					jsonobj.put("CountryName", Name);
					code = jsonobj.toJSONString();
				} 				
				return code;
			}
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}

	public String getCountry(int uid) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "SELECT CountryIndex, AccountIdx, Name FROM country WHERE AccountIdx = ?";
			st = conn.prepareStatement(sql);
			st.setInt(1, uid);

			String code = "OK";
			rs = st.executeQuery();

			if(!rs.next()){
				code = "NA";
			}
			else
			{
				JSONObject jsonobj = new JSONObject();
				jsonobj.put("CountryIndex", rs.getString("CountryIndex"));
				jsonobj.put("CountryName", rs.getString("Name"));
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
}
