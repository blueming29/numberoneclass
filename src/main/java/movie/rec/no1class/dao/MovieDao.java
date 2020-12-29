package movie.rec.no1class.dao;

import java.util.ArrayList;

import movie.rec.no1class.dto.MovieDto;

public interface MovieDao {

	public MovieDto get_boxoffice(int movie_code);

	public ArrayList<MovieDto> get_starPoint();



}
