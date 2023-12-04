package com.project.wsch.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.wsch.vo.BoardDAO;
import com.project.wsch.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
    /*/wsch/board/board_list*/
    @GetMapping("/board_list")
    public String boardList() {
        // 로직 처리
        return "/board/board_list";
    }
    @GetMapping("/board_view")
    public String boardView() {
        // 로직 처리
        return "/board/board_view";
    }
    @GetMapping("/board_write")
    public String boardWrite() {
        // 로직 처리
        return "/board/board_write";
    }
    
    @GetMapping("/board_del")
    public String board_del() {
       return "/board/board_del";
    }
    @GetMapping("/board_edit_ok")
    public String board_edit_ok() {
       return "/board/board_edit_ok";
    }
    @GetMapping("/board_edit")
    public String board_edit() {
       return "/board/board_edit";
    }
    @PostMapping("/board_write_ok")
    public String boardWriteOk(HttpServletRequest request) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            // 적절한 오류 처리 코드를 추가하세요.
        }

        // 1. 전페이지(글등록폼)에 입력한 값을 서버로 가져온다.(request)
        BoardVO vo = new BoardVO();

        // form 데이터
        vo.setSubject(request.getParameter("subject"));
        vo.setContent(request.getParameter("content"));

        // session 글쓴이
        HttpSession session = request.getSession();
        vo.setUserid((String)session.getAttribute("logId"));

        // 클라이언트 ip
        vo.setIp(request.getRemoteAddr());

        // 2. DB에 insert한다.
        BoardDAO dao = new BoardDAO();
        int result = dao.boardInsert(vo);

        // 3. insert 결과에 따른 실행이동한다.
        // 성공시 : 글등록, 게시판 목록으로 이동
        // 실패시 : 글 등록 폼으로 이동
        if(result > 0) {
            return "redirect:/board/board_list";
        } else {
            return "/board/board_write";
        }
    }
    

}
