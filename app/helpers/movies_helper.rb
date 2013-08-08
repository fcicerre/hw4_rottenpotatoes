module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def self.movies_by_director_path(movie)
    return "/movies/similar_director?#{URI.encode_www_form(:title => movie.title)}"
  end
end
