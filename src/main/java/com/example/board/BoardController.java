package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="/board")
public class BoardController {

    @Autowired
    BoardServiceImpl boardService;

    @RequestMapping(value = "/board/list", method = RequestMethod.GET)
    public String boardlist(Model model){
        model.addAttribute("list", boardService.getBoardList());
        return "posts";
    }

    @RequestMapping(value = "/board/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method = RequestMethod.POST)
    public String addPostOk(BoardVO vo) {
        if (boardService.insertBoard(vo) == 0) {
            System.out.println("데이터 추가 실패");
        } else {
            System.out.println("데이터 추가 성공");
        }
        return "redirect:list";
    }
    @RequestMapping(value = "/board/editform/{seq}", method = RequestMethod.GET)
    public String editPost(@PathVariable("seq") int seq, Model model) {
        BoardVO boardVO = boardService.getBoard(seq);
        model.addAttribute("u", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/board/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        if (boardService.updateBoard(vo) == 0) {
            System.out.println("데이터 수정 실패");
        } else {
            System.out.println("데이터 수정 성공");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "/board/deleteok/{seq}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("seq") int seq) {
        if (boardService.deleteBoard(seq) == 0) {
            System.out.println("데이터 삭제 실패");
        } else {
            System.out.println("데이터 삭제 성공");
        }
        return "redirect:../list";
    }
}
