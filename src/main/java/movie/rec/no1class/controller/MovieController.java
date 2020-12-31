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
		
		ArrayList<MovieDto> boxoffice_dtos = new ArrayList<MovieDto>();
		MovieBoxOfficeCrawler code_crawler = new MovieBoxOfficeCrawler();
		ArrayList<String> movie_code = code_crawler.getMovieCode();
		
		for(int i = 0; i < movie_code.size() ; i++) {
			MovieDto dto = dao.get_boxoffice(Integer.parseInt(movie_code.get(i)));

			if(dto != null) {
				boxoffice_dtos.add(dto);
			}
		}
		model.addAttribute("boxofficeList", boxoffice_dtos);
				
		ArrayList<MovieDto> starPoint_dtos = dao.get_starPoint();
		model.addAttribute("starPoint", starPoint_dtos);

		return "main";
	}
	
	// bootstrap-modal 테스트
	@RequestMapping("/modal")
	public String modal() {
		return "modal";
	}
}
