Given /^the following movies exist:$/ do |movies_table|
  # movies_table is a Cucumber::Ast::Table
  movies_table.hashes.each do |movie|
    if Movie.where(:title => movie['title']).empty?
      m = Movie.create(movie)
    end
  end
end
