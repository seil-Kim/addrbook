package addrbookcon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class addrbookDAO {
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	//전체 주소록 검색
	public List<addrbook> readALLDB(){
		ArrayList<addrbook> list = new ArrayList<addrbook>();
		
		String sql = "select * from addrbook";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				addrbook adb = new addrbook();
				adb.setName(rs.getString("name"));
				adb.setEmail(rs.getString("email"));
				adb.setTel(rs.getString("tel"));
				adb.setBirth(rs.getString("birth"));
				adb.setCompany(rs.getString("company"));
				adb.setMemo(rs.getString("memo"));
				list.add(adb);
			}
		}
		catch(Exception e) {
			System.out.println("전체 목록 읽기 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	//주소록 추가
	public int insertDB(addrbook adb){
		int result = -1;
		
		String sql = "insert into addrbook (id, name, email, tel, birth, company, memo)"
				+ " values(id_seq.nextval, ?, ?, ?, ?, ?, ?)";
				
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1,  adb.getName());
			ps.setString(2,  adb.getEmail());
			ps.setString(3,  adb.getTel());
			ps.setString(4,  adb.getBirth());
			ps.setString(5,  adb.getCompany());
			ps.setString(6,  adb.getMemo());
			result = ps.executeUpdate();			
		} catch(Exception e) {
			System.out.println("insertDB 오류");
		} finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
}