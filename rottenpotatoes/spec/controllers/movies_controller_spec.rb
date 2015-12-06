require 'rails_helper'
describe MoviesController do
    before :each do
      movie_with_director = Movie.create!(:title => 'test', :director =>'test')
      movie_without_director = Movie.create!(:title => 'test', :director =>'')
      @fake_results = [double('movie1'), double('movie2')]
    end
    describe 'When the specified movie has a director' do
      it 'should call the movie method that searches for similar movies' do
        Movie.should_receive(:all_movies_with_same_director).with('test').and_return(@fake_results)
        get :match, {:id => 1}
      end
      it 'should render the match template' do
        Movie.stub(:all_movies_with_same_director).and_return(@fake_results)
        get :match, {:id => 1}
        response.should render_template('movies/match')
      end
      it 'should make the results available to the template' do
        Movie.stub(:all_movies_with_same_director).and_return(@fake_results)
        get :match, {:id => 1}
        assigns(:movies).should == @fake_results
      end
    end
    describe 'When the specified movie has no director' do
      it 'should redirect to the root page' do
        Movie.stub(:all_movies_with_same_director).and_return(@fake_results)
        get :match, {:id => 2}
        response.should render_template('movies')
      end
    end
end
    