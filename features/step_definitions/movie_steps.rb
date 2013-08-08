Given /^the following movies exist:$/ do |movies_table|
  # movies_table is a Cucumber::Ast::Table
  movies_table.hashes.each do |movie|
    if Movie.where(:title => movie['title']).empty?
      m = Movie.create(movie)
    end
  end
end

#When /^(?:|I )fill in "Director" with "([^"]*)"$/ do |value|
#  fill_in('Director', :with => value)
#end

Then /^the director of "(?:[^"]*)" should be "([^"]*)"$/ do |value|
    page.should have_content(value)
end
