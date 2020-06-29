package core;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.simple.JSONArray;
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
			
			String sql = "SELECT FeedIdx, CountryIndex, Active, Location, Name, StartDate, LastUpdate, Finished FROM countryList WHERE CountryIndex = ? and Active = TRUE ORDER BY Location";
			st = conn.prepareStatement(sql);
			st.setString(1, uid);

			rs = st.executeQuery();
			
			JSONArray jsonarr = new JSONArray();
						
			while(rs.next()) {
				JSONObject jsonobj = new JSONObject();
				jsonobj.put("FeedIdx", rs.getString("FeedIdx"));				
				jsonobj.put("CountryIndex", rs.getString("CountryIndex"));	
				jsonobj.put("Location", rs.getString("Location"));	
				jsonobj.put("Name", rs.getString("Name"));	
				jsonobj.put("StartDate", rs.getString("StartDate"));	
				jsonobj.put("LastUpdate", rs.getString("LastUpdate"));	
				jsonarr.add(jsonobj);
			}
			String res = jsonarr.toJSONString();
			return res;
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}

	public String deleteFeed(String no) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "UPDATE countryList set Active = FALSE, Finished = FALSE WHERE FeedIdx = ?";
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
	
	public String NickName(String uid, String Name) throws Exception{
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
	
	public String insertFeed(String countryIdx, String Location, String Name) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			synchronized(this){
				String sql = "INSERT INTO countryList(CountryIndex, Active, Location, Name, StartDate, LastUpdate, Finished) VALUES ( ?,TRUE, ?, ?, NOW(), DATE('2020-06-21'), FALSE )";
				st = conn.prepareStatement(sql);
				st.setString(1, countryIdx);
				st.setString(2, Location);
				st.setString(3, Name);
				
				int cnt = st.executeUpdate();
				
				if(cnt == 0)
					return "ER";
				
				sql = "INSERT INTO dayCheck(FeedIdx, Count, countryIdx, Name) VALUES ( (select FeedIdx from countryList where CountryIndex = ? and Active = TRUE and Location = ? and Finished = FALSE), 0, ?, (SELECT Name from country where CountryIndex = ?) )";
				st = conn.prepareStatement(sql);
				st.setString(1, countryIdx);
				st.setString(2, Location);
				st.setString(3, countryIdx);
				st.setString(4, countryIdx);

				cnt = st.executeUpdate();
				return (cnt==0) ? "ER" : "OK";
			}
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}

	/*
	public String updateFeed(String FeedIdx, String Active, String Finished ) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			String sql = "UPDATE feed SET content = ? WHERE FeedIdx = ?";
			st = conn.prepareStatement(sql);
			st.setString(1, FeedIdx);
			st.setString(2, FeedIdx);
			int cnt =  st.executeUpdate();
			return (cnt == 0) ? "ER" : "OK";
		}
		finally{
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}
	*/
	public String updateDailyFeed(String FeedIdx) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			String sql = "UPDATE countryList SET LastUpdate = now() WHERE FeedIdx = ?";
			st = conn.prepareStatement(sql);
			st.setString(1, FeedIdx);
			int cnt =  st.executeUpdate();

			if(cnt == 0)
				return "ER";
			
			sql = "UPDATE dayCheck SET Count = Count+1 WHERE FeedIdx = ?";
			st = conn.prepareStatement(sql);
			st.setString(1, FeedIdx);
			cnt =  st.executeUpdate();

			if(cnt == 0)
				return "ER";
			
			return "OK";
		}
		finally{
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
		
	}
	

	public String fetchRank() throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "SELECT Name, countryIdx, sum(Count) count from dayCheck group by (countryIdx) order by sum(Count) desc";
			st = conn.prepareStatement(sql);
			rs = st.executeQuery();
			
			JSONArray jsonarr = new JSONArray();
						
			while(rs.next()) {
				JSONObject jsonobj = new JSONObject();
				jsonobj.put("Name", rs.getString("Name"));				
				jsonobj.put("countryIdx", rs.getString("countryIdx"));	
				jsonobj.put("count", rs.getString("count"));	
				jsonarr.add(jsonobj);
			}
			String res = jsonarr.toJSONString();
			return res;
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}

	public String fetchHistory(String uid) throws Exception{
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try{
			conn = ConnectionPool.getInstance().getConn();
			
			String sql = "select Name, StartDate, LastUpdate from countryList Where CountryIndex = ? order by StartDate";
			st = conn.prepareStatement(sql);
			st.setString(1, uid);
			rs = st.executeQuery();
			
			JSONArray jsonarr = new JSONArray();
						
			while(rs.next()) {
				JSONObject jsonobj = new JSONObject();
				jsonobj.put("Name", rs.getString("Name"));				
				jsonobj.put("StartDate", rs.getString("StartDate"));	
				jsonobj.put("LastUpdate", rs.getString("LastUpdate"));	
				jsonarr.add(jsonobj);
			}
			String res = jsonarr.toJSONString();
			return res;
		}
		finally{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(conn != null) conn.close();
		}
	}
}
