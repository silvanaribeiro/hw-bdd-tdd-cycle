Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(:title => movie["title"], :release_date => movie["release_date"], :rating => movie["rating"], :director => movie["director"])
  end
end

Then /the director of "(.*)" should be "(.*)"/ do |movie, director|
  director_exists = page.body.include?(director)
  right_movie = page.body.include?(movie)
  director_exists.should == true && right_movie.should == true
end