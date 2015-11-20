class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.all_movies_with_same_director(id)
    @movie = Movie.find_by_id(id)
    Movie.where(director:@movie.director)
  end
end
