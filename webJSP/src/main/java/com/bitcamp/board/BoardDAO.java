package com.bitcamp.board;

import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DBConnection {
	//�۵��
	public int boardInsert(BoardVO vo) {
		int result=0;
		try {
			dbConn();
			
			sql = "insert into board(no, subject, content, userid, ip)"
					+ "values(boardsq.nextval, ?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getUserid());
			pstmt.setString(4, vo.getIp());
			
			result = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	//����ü����
	public List<BoardVO> boardAllRecord(){
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			dbConn();
			sql = "select no, subject, userid, to_char(writedate, 'MM-DD HH:MI') writedate, "
					+ "hit from board order by no desc";
			pstmt= con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setUserid(rs.getString(3));
				vo.setWritedate(rs.getString(4));
				vo.setHit(rs.getInt(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}
	//��1�� ����
	public BoardVO oneRecordSelect(int no, int part) {
		BoardVO vo = new BoardVO();
		try {
			//��ȸ�� ����
			if(part==1) {//1:�۳�������, 2:�ۼ�����
				hitCount(no);
			}
			dbConn();
			sql = "select no, subject, content, userid, writedate, hit from board where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();//���ڵ尡 �Ѱ�
			
			if(rs.next()) {
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setContent(rs.getString(3));
				vo.setUserid(rs.getString(4));
				vo.setWritedate(rs.getString(5));
				vo.setHit(rs.getInt(6));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return vo;//��� �ݱ����� �����ϸ� ��� �ȴݱ� ��� �ݱ�� ���� �����ؾ���
	}
	//�� ����
	public int boardUpdate(BoardVO vo) {
		int result=0;
		try {
			dbConn();
			sql = "update board set subject=?, content=? where no=? and userid=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getNo());
			pstmt.setString(4, vo.getUserid());
			
			result=pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	//�ۻ���
	public int boardDelete(int no, String userid) {
		int result = 0;
		try {
			dbConn();
			sql = "delete from board where no=? and userid=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setString(2, userid);
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	//��ȸ�� ����
	public void hitCount(int no) {
		try {
			dbConn();
			
			sql = "update board set hit = hit +1 where no=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
}
