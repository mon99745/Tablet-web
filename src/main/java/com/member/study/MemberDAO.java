package com.member.study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
//	jdbc를 이용해서 mysql연동
	public Connection getConn() {
		String url = "jdbc:mysql://127.0.0.1:3306/Danta?member";
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
		
		//전체 회원 검색
		public ArrayList<MemberDTO> getAllMember() {
			conn = getConn();
			String sql = "SELECT * FROM member";
			ArrayList<MemberDTO> list = new ArrayList<>();
			try {
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					//하나씩 받아오는 방법도 있다.
					//String member_id = rs.getString("member_id");
					MemberDTO dto = new MemberDTO();
					
					dto.setMember_id(rs.getString("member_id"));
					dto.setMember_pwd(rs.getString("member_pwd"));
					dto.setMember_name(rs.getString("member_name"));
					dto.setMember_birthday(rs.getInt("member_birthday"));
					dto.setMember_gender(rs.getString("member_gender"));
					dto.setMember_phone(rs.getString("member_phone"));
					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("getAllMember() Exception!!!");
			} finally {
				dbClose();
			}
			return list;
		} //getAllMember()
		//회원 삭제
		public void deleteMember(String member_id) {
			conn = getConn();
			String sql = "DELETE FROM member WHERE member_id = ?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, member_id);
				ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("deleteMember() Exception!!!");
			} finally {
				dbClose();
			}
		} //deleteMember()
		
		//특정 회원 검색
		public MemberDTO getDetailMember(String member_id) {
			conn = getConn();
			String sql = "SELECT * FROM member WHERE member_id = ?";
			MemberDTO dto = null;
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, member_id);
				rs = ps.executeQuery();
				if(rs.next()) {
					dto = new MemberDTO();
					dto.setMember_id(rs.getString("member_id"));
					dto.setMember_pwd(rs.getString("member_pwd"));
					dto.setMember_name(rs.getString("member_name"));
					dto.setMember_birthday(rs.getInt("member_birthday"));
					dto.setMember_gender(rs.getString("member_gender"));
					dto.setMember_phone(rs.getString("member_phone"));
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("getDetailmember() Exception!!!");
			} finally {
				dbClose();
			}
			return dto;
		} //getDetailMember()
		
		//비밀번호 검색
		public String getMember_pwd(String id) {
			conn = getConn();
			String sql = "SELECT member_pwd FROM member WHERE member_id = ?";
			String member_pwd = null;
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, id);
				rs = ps.executeQuery();
				
				if(rs.next()) {
					member_pwd = rs.getString("member_pwd");
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("getMember_pwd() Exception!!!");
			} finally {
				dbClose();
			}
			return member_pwd;
		} //getMember_pwd()
		
		//회원 정보 수정
		public int updateMember(MemberDTO dto) {
			conn = getConn();
			String sql = "UPDATE boardMember SET member_pwd = ?, member_name = ?,";
			sql += " member_birthday = ?, member_gender = ?, member_phone = ? WHERE member_id = ?";
			int succ = 0;
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getMember_pwd());
				ps.setString(2, dto.getMember_name());
				ps.setInt(3, dto.getMember_birthday());
				ps.setString(4, dto.getMember_gender());
				ps.setString(5, dto.getMember_phone());
				ps.setString(6, dto.getMember_id());
				succ = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("updateMember() Exception!!!");
			} finally {
				dbClose();
			}
			return succ;
		} //updateMember()
		
		//DB 종료
		public void dbClose() {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("dbClose() Exception!!!");
			}
		} //dbClose()
	} //class