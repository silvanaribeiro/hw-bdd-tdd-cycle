Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(:title => movie["title"], :release_date => movie["release_date"], :rating => movie["rating"], :director => movie["director"])
  end
end
