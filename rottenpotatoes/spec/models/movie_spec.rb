require 'rails_helper'

RSpec.describe Movie, type: :model do
     describe 'Searching for simillar movies' do
        before :each do
          @movie_with_director = Movie.create!(:title => 'test1', :director =>'testing', :rating => 'R', :description => 'test', :release_date => nil)
          @movie_with_director2 = Movie.create!(:title => 'test2', :director =>'testing', :rating => 'R', :description => 'test', :release_date => nil)
          @movie_with__different_director = Movie.create!(:title => 'test2', :director =>'director', :rating => 'R', :description => 'test', :release_date => nil)
          @movie_without_director = Movie.create!(:title => 'test', :director =>'', :rating => 'R', :description => 'test', :release_date => nil)
        end
        describe 'When all_movies_with_same_director method is called' do
            it 'it should find movies by the same director' do
                expect(Movie.all_movies_with_same_director('testing')).to eq([@movie_with_director, @movie_with_director2])
            end
            it 'it should not find movies by different directors' do
                expect(Movie.all_movies_with_same_director('testing')).not_to eq([@movie_with__different_director, @movie_without_director])
            end
        end
     end
end
