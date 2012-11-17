require 'spec_helper'

describe Category do
    it "should require a name" do
        Category.new(name: "", impact:"botnet").should_not be_valid
    end

    it "should require an impact" do
        Category.new(name:"botnet", impact:"").should_not be_valid
    end

    it "should not allow invalid impacts" do
        Category.new(name:"botnet", impact:"Bacon").should_not be_valid
    end
end

