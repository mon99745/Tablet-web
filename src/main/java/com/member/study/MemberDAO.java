package com.member.study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
//	jdbc를 이용해서 mysql연동
	public Connection getConn() {
		String url = "jdbc:mysql://127.0.0.1:3306/Member";
		String user = "root";
		String password = "mo45310914";
		try {
			Class.forName ("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getConn() Exception!!!");
		}
		return conn;
	} //getConn()
	//joinMember : 회원가입
		public boolean joinMember(MemberDTO dto) {
			//① 접속
			conn = getConn();
			
			//② SQL 문장 작성
			String sql = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?)";
			int succ = 0;
			//③ try-catch 블록 작성 후 PreapareStatement 설정
			try {
				ps = conn.prepareStatement(sql); //생성 후 실행할 쿼리 정보 등록
				ps.setString(1, dto.getMember_id());
				ps.setString(2, dto.getMember_pwd());
				ps.setString(3, dto.getMember_name());
				ps.setInt(4, dto.getMember_birthday());
				ps.setString(5, dto.getMember_gender());
				ps.setString(6, dto.getMember_phone());
				
				succ = ps.executeUpdate();
				
				if(succ != 0) {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("joinMember() Exception!!!");
			}
			return false;
		} //joinMember()
		
		//isMember : 회원 여부
		public int isMember(MemberDTO dto) {
			conn = getConn();
			String sql = "SELECT member_pwd FROM member WHERE member_id = ?";
			int result = -1;
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getMember_id());
				rs = ps.executeQuery();
				
				if(rs.next()) {	//아이디 존재
					if(rs.getString("member_pwd").equals(dto.getMember_pwd())) {
						result = 1;	//비밀번호 일치
					} else {
						result = 0;	//비밀번호 불일치
					}
				} else {	//아이디가 존재하지 않는다
					result = -1;
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("isMember() Exception!!!");
			}
			return result;
		} //isMember()
	} //class