require 'rails_helper'
describe MoviesController do
    before :each do
      @movie_with_director = Movie.create!(:title => 'test', :director =>'test')
      @movie_without_director = Movie.create!(:title => 'test2', :director =>'')
      @movie_updated = Movie.create!(:title => 'up', :director =>'')
      @fake_results = [double('movie1'), double('movie2')]
      @fake_results2 = [double('test'), double('test2'), double('up')]
      @fake_results3 =[double('test2'), double('up')]
    end
    # describe 'When the specified movie has a director' do
    #   it 'should call the movie method that searches for similar movies' do
    #     Movie.should_receive(:all_movies_with_same_director).with('test').and_return(@fake_results)
    #     get :match, {:id => 1}
    #   end
    #   it 'should render the match template' do
    #     Movie.stub(:all_movies_with_same_director).and_return(@fake_results)
    #     get :match, {:id => 1}
    #     response.should render_template('movies/match')
    #   end
    #   it 'should make the results available to the template' do
    #     Movie.stub(:all_movies_with_same_director).and_return(@fake_results)
    #     get :match, {:id => 1}
    #     assigns(:movies).should == @fake_results
    #   end
    # end
    # describe 'When the specified movie has no director' do
    #   it 'should redirect to the root page' do
    #     get :match, {:id => 2}
    #     response.should redirect_to('/movies')
    #   end
    # end
    # describe 'When creating a new movie' do
    #   it 'should call the method create' do
    #     Movie.should_receive(:create).with('new')
    #     post :create
    #   end
    #   it 'should redirect to the home page' do
    #     Movie.stub(:create)
    #     put :create
    #     response.should redirect_to('/movies')
    #   end
    #   it 'should show the new movie on the home page' do
    #     Movie.stub(create)
    #     put :create
    #     assigns(:movies).should == @fake_results2
    #   end
    # end
    # describe 'When updating a movie' do
    #   it 'should call the method find' do
    #     Movie.should_receive(:find).with("1").and_return(@movie_with_director)
    #     Movie.any_instance.stub(:update_attributes).and_return(@movie_with_director)
    #     put :update, {:id => 1} 
    #   end
    #   it 'should call the method update' do
    #     Movie.should_receive(:update_attributes).with(:rating => 'R').and_return(@fake_results)
    #     put :update, {:id => 1} 
    #   end
    #   it 'should redirect to the home page' do
    #     Movie.stub(:find).and_return(@movie_with_director)
    #     put :update, {:id => 1} 
    #     response.should redirect_to('/movies')
    #   end
    #   it 'should show the updated movie on the home page' do
    #     Movie.stub(:find).and_return(@movie_with_director)
    #     put :update, {:id => 1} 
    #     assigns(:movies).should == @fake_results2
    #   end
    # end
    # describe 'When deleting a movie' do
    #   it 'should call the method find' do
    #     Movie.should_receive(:find).with("1").and_return(@movie_with_director)
    #     Movie.stub(:destroy)
    #     delete :destroy, {:id => 1} 
    #   end
    #   it 'should call the delete method' do
    #     Movie.stub(:find).and_return(@movie_with_director)
    #     Movie.should_receive(:destroy)
    #     delete :destroy, {:id => 1} 
    #   end
    #   it 'should redirect to the home page' do
    #     Movie.stub(:find).and_return(@movie_with_director)
    #     Movie.stub(:destroy)
    #     delete :destroy, {:id => 1} 
    #     response.should redirect_to('/movies')
    #   end
    #   it 'should not show the deleted movie on the home page' do
    #     Movie.stub(:find).and_return(@movie_with_director)
    #     Movie.stub(:destroy)
    #     delete :destroy, {:id => 1} 
    #     assigns(:movies).should == @fake_results3
    #   end
    # end
end
    