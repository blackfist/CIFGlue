Given /^I have a privacy tag called "(.*?)"$/ do |tag|
    PrivacyTag.create(:content => tag)
end

When /^I go to the list of privacy tags$/ do
    visit privacy_tags_path
end

