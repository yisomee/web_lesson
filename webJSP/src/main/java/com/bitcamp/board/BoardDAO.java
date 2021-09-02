package com.bitcamp.board;

import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DBConnection {
	//글등록
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
	//글전체선택
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
	//글1개 선택
	//글 수정
	//조회수 증가
	
}
