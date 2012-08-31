Given /^I have an indicator with content "(.*?)" and casename "(.*?)"$/ do |content, casename|
  Indicator.create(:content => content, :case => casename, :analyst => 'Thompson', :description => 'botnet server')
end

Given /^I have an indicator with content "(.*?)" and privacy "(.*?)"$/ do |content, privacy| 
  Indicator.create(:content => content, 
                   :case => 'test', 
                   :analyst => 'test', 
                   :description => 'test', 
                   :privacy_tag_id => PrivacyTag.find_by_content(privacy).id)
end


When /^I go to the list of indicators$/ do
    visit indicators_path
end

Then /^I should see "(.*?)"$/  do |content|
    page.should have_content(content)
end

When /^I search for "(.*?)"$/ do |arg1|
    fill_in 'q[content_or_case_or_analyst_or_description_cont]', :with => arg1
    click_button "Search" 
end

When /^I search for privacy "(.*?)"$/ do |privacy|
    page.select(privacy, :from => 'q[privacy_tag_id_eq]')
    click_button "Search"
end


Then /^I should not see "(.*?)"$/ do |arg1|
    page.should_not have_content(arg1)
end

Given /^I have a MalwareIndicator with content "(.*?)"$/ do |arg1|
    MalwareIndicator.create(:content => arg1, :md5sum => arg1, :case => '2012VZIR0002', :analyst => 'Brannon', :description => 'keylogger')
end

When /^I search for MalwareIndicators$/ do
    select("Malware", :from => 'q[type_start]')
    click_button "Search"
end

