module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def self.movies_by_director_path(movie)
    #return "/movies/#{movie.title}/similar_direct"
    return "/movies/#{URI.encode_www_form_component(movie.title)}/similar_director"
  end
end
