Given /^I have an indicator with content "(.*?)" and casename "(.*?)"$/ do |content, casename|
  Indicator.create(:content => content, :case => casename, :analyst => 'Thompson', :description => 'botnet server')
end

When /^I go to the list of indicators$/ do
    visit indicators_path
end

Then /^I should see "(.*?)"$/  do |content|
    page.should have_content(content)
end

When /^I search for "(.*?)"$/ do |arg1|
    fill_in 'q[content_cont]', :with => arg1
    click_button "Search" 
end

Then /^I should not see "(.*?)"$/ do |arg1|
    page.should_not have_content(arg1)
end

Given /^I have a MalwareIndicator with content "(.*?)"$/ do |arg1|
    MalwareIndicator.create(:content => arg1, :md5sum => arg1, :case => '2012VZIR0002', :analyst => 'Brannon', :description => 'keylogger')
end

When /^I search for MalwareIndicators$/ do
    fill_in 'q[type_cont]', :with => 'MalwareIndicator'
    click_button "Search"
end

