package com.project.wsch.vo;

import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DBConnection {

    // 게시판 글 등록
    public int boardInsert(BoardVO vo) {
        int cnt = 0;
        try {
            dbConnection();

            String sql = "INSERT INTO board (subject, startDate, endDate, location, fee, content, userid, hit, writedate, ip) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, vo.getSubject());
            pstmt.setString(2, vo.getStartDate());
            pstmt.setString(3, vo.getEndDate());
            pstmt.setString(4, vo.getLocation());
            pstmt.setString(5, vo.getFee());
            pstmt.setString(6, vo.getContent());
            pstmt.setString(7, vo.getUserid());
            pstmt.setInt(8, vo.getHit());
            pstmt.setString(9, vo.getWritedate());
            pstmt.setString(10, vo.getIp());

            cnt = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return cnt;
    }

    // 게시판 목록 보기
    public List<BoardVO> boardSelectAll() {

        List<BoardVO> list = new ArrayList<BoardVO>();
        try {
            dbConnection();
            String sql = "SELECT no, subject, startDate, endDate, location, content, hit " +
                         "FROM board ORDER BY no DESC";
            pstmt = con.prepareStatement(sql);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                BoardVO vo = new BoardVO();
                vo.setNo(rs.getInt(1));
                vo.setSubject(rs.getString(2));
                vo.setStartDate(rs.getString(3));
                vo.setEndDate(rs.getString(4));
                vo.setLocation(rs.getString(5));
                vo.setContent(rs.getString(6));
                vo.setHit(rs.getInt(7));

                list.add(vo);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return list;
    }

    // 게시판 내용 보기
    public BoardVO boardView(int no) {
        BoardVO vo = new BoardVO();
        try {
            dbConnection();

            String sql = "SELECT no, subject, startDate, endDate, location, fee, content, userid, hit, writedate, ip " +
                         "FROM board WHERE no=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, no);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                vo.setNo(rs.getInt("no"));
                vo.setSubject(rs.getString("subject"));
                vo.setStartDate(rs.getString("startDate"));
                vo.setEndDate(rs.getString("endDate"));
                vo.setLocation(rs.getString("location"));
                vo.setFee(rs.getString("fee"));
                vo.setContent(rs.getString("content"));
                vo.setUserid(rs.getString("userid"));
                vo.setHit(rs.getInt("hit"));
                vo.setWritedate(rs.getString("writedate"));
                vo.setIp(rs.getString("ip"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return vo;
    }

    // 게시판 글 수정
    public int boardEditOk(BoardVO vo) {
        int result = 0;
        try {
            dbConnection();
            String sql = "UPDATE board SET subject=?, startDate=?, endDate=?, location=?, content=? " +
                         "WHERE no=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, vo.getSubject());
            pstmt.setString(2, vo.getStartDate());
            pstmt.setString(3, vo.getEndDate());
            pstmt.setString(4, vo.getLocation());
            pstmt.setString(5, vo.getContent());
            pstmt.setInt(6, vo.getNo());

            result = pstmt.executeUpdate();

        } catch (Exception e) {
            System.out.println("글 수정 예외 발생.....");
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return result;
    }

    // 게시판 삭제
    public int boardDelete(int no) {
        int result = 0;
        try {
            dbConnection();

            String sql = "DELETE FROM board WHERE no=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, no);

            result = pstmt.executeUpdate();

        } catch (Exception e) {
            System.out.println("게시판 삭제 예외처리 발생...");
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return result;
    }

    // 조회수 증가
    public void hitCount(int no) {

        try {
            dbConnection();

            String sql = "UPDATE board SET hit = hit + 1 WHERE no=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, no);

            pstmt.executeUpdate();

        } catch (Exception e) {
            System.out.println("조회수 증가 예외 발생함 --> " + e.getMessage());
        } finally {
            dbClose();
        }
    }
}
