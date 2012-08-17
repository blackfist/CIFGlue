Given /^I have a privacy tag called "(.*?)"$/ do |tag|
    PrivacyTag.create(:content => tag)
end

When /^I go to the list of privacy tags$/ do
    visit privacy_tags_path
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
    privacy_tags_path
end

Then /^I should see a success message for "(.*?)"$/ do |arg1|
    page.should have_selector('div', :class => 'alert alert success') do |flash|
        flash.should have_content arg1
    end
end

