Given /^I go to the new category page$/ do
    visit new_category_path
end

Then /^I should be on the category list page$/ do
    page.current_path.should == categories_path
end
