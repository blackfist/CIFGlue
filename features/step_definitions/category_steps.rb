Given /^I go to the new category page$/ do
    visit new_category_path
end

Given /^I got to the category list page$/ do
    visit categories_path
end

Then /^I should be on the category list page$/ do
    page.current_path.should == categories_path
end

Then /^I should be on the new category page$/ do
    page.current_path.should == new_category_path
end

Given /^I select "(.*?)" from "(.*?)"$/ do |value, dropdown|
    page.select(value, :from => dropdown)
end

Given /^I have a category called "(.*?)"$/ do |arg1|
    Category.create(:name => arg1,
                    :impact => 'Malware')
end

When /^I go to the category list page$/ do
    visit categories_path
end

When /^I click Delete for "(.*?)"$/ do |arg1|
    cat = Category.find_by_name(arg1)
    cat.should be
      Capybara.current_session.driver.delete category_path(cat.id)
end
