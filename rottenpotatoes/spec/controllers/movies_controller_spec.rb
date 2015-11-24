require 'rails_helper'
describe MoviesController do
    before :each do
      @fake_results = [double('movie1'), double('movie2')]
    end
    describe 'When the specified movie has a director' do
      it 'should call the movie method that searches for similar movies' do
        Movie.should_receive(:all_movies_with_same_director).with('test').
            and_return(@fake_results)
        get :match, {:id => 1}
      end
    end
    describe 'When the specified movie has no director' do
      it 'should redirect to the root page' do
        Movie.stub(:all_movies_with_same_director).and_return(@fake_results)
        post :match, {:id => 1}
        response.should render_template('root')
      end
    end
end
    