package movie.rec.no1class.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import movie.rec.no1class.crawler.MovieBoxOfficeCrawler;
import movie.rec.no1class.dao.MovieDao;
import movie.rec.no1class.dto.MovieDto;

@Controller
public class MovieController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		MovieDao dao = sqlSession.getMapper(MovieDao.class);
		
		ArrayList<MovieDto> dtos = new ArrayList<MovieDto>();
		MovieBoxOfficeCrawler code_crawler = new MovieBoxOfficeCrawler();
		ArrayList<String> movie_code = code_crawler.getMovieCode();
		System.out.println(movie_code.size());
		
		for(int i = 0; i < movie_code.size() ; i++) {
			MovieDto dto = dao.get_inform(Integer.parseInt(movie_code.get(i)));

			if(dto != null) {
				dtos.add(dto);
			}
		}
		model.addAttribute("list", dtos);

		return "main";
	}
}
