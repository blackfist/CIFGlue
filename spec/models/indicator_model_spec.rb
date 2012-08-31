describe "indicator" do
    it "should return a human named when asked for its privacy level" do
        @privacy = PrivacyTag.find_or_create_by_content("Secret")
        @ind = Indicator.create(:content => '134.29.1.1',
                             :analyst => 'test',
                             :description => 'test',
                             :case => 'test',
                             :privacy_tag_id => @privacy.id)
        @ind.privacy.should == "Secret"
    end
end
