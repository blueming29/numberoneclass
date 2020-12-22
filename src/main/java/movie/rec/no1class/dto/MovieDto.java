package movie.rec.no1class.dto;

import lombok.Data;

@Data
public class MovieDto {
	private String movie_img;
	private int movie_code;
	private String movie_title;
	private String movie_point;
	private String movie_genre;
	private String movie_nation;
	private String movie_runtime;
	private String movie_releasedate;
	private String movie_director;
	private String movie_actor;
	private String movie_content;
	public MovieDto() {
		// TODO Auto-generated constructor stub
	}
	
	public MovieDto(String movie_img, int movie_code, String movie_title, String movie_point, String movie_genre,
			String movie_nation, String movie_runtime, String movie_releasedate, String movie_director,
			String movie_actor, String movie_content) {
		super();
		this.movie_img = movie_img;
		this.movie_code = movie_code;
		this.movie_title = movie_title;
		this.movie_point = movie_point;
		this.movie_genre = movie_genre;
		this.movie_nation = movie_nation;
		this.movie_runtime = movie_runtime;
		this.movie_releasedate = movie_releasedate;
		this.movie_director = movie_director;
		this.movie_actor = movie_actor;
		this.movie_content = movie_content;
	}

	
}
