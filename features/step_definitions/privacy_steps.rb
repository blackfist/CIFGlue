Given /^I have a privacy tag called "(.*?)"$/ do |tag|
    PrivacyTag.create(:content => tag)
end

When /^I go to the list of privacy tags$/ do
    visit privacy_tags_path
end

When /^I go to the new indicator form$/ do
    visit new_indicator_path
end

When /^I go to the new malware indicator form$/ do
    visit new_malware_path
end

Given /^I go to the new privacy tag page$/ do
    visit new_privacy_tag_path
end

Given /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
    fill_in field, :with => value
end

When /^I click "(.*?)"$/ do |arg1|
    click_button arg1
end

Then /^I should be on the privacy tag page$/ do
    page.current_path.should == privacy_tags_path
end

Then /^I should be on the new privacy tag page$/ do
    page.current_path.should == new_privacy_tag_path
end

Then /^I should see a success message for "(.*?)"$/ do |arg1|
    page.within('div', :class => 'alert alert-success') do
        page.should have_content arg1 
    end
end

Then /^I should see an error message for "(.*?)"$/ do |arg1|
    page.within('div', :class => 'alert alert-error') do
        page.should have_content arg1
    end
end

Then /^I should see a label for "(.*?)"$/ do |arg1|
    page.should have_content arg1
end

Then /^I should see "(.*?)" in a selectbox$/ do |arg1|
    page.within('select') do
        page.should have_content arg1 
    end
end


When /^I try to create a tag called "(.*?)"$/ do |arg1|
    visit new_privacy_tag_path
    fill_in 'privacy_tag[content]', :with => arg1
    click_button 'Create'
end
