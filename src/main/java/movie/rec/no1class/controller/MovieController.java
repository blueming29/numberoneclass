package movie.rec.no1class.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import movie.rec.no1class.dao.MovieDao;
import movie.rec.no1class.dto.MovieDto;

@Controller
public class MovieController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		MovieDao dao = sqlSession.getMapper(MovieDao.class);
		ArrayList<MovieDto> dtos = dao.list();
		model.addAttribute("list", dtos);

		return "main";
	}
}
