require 'spec_helper'

describe CategoriesController, "Create, Read, Update, and Destroy Categories" do
    describe "new" do
        before do
            get :new
        end

        it "should be successful" do
            response.should be_success
        end

        it "should create an category object" do
            assigns(:category).should_not be_nil
        end
    end

    describe "create" do
        it "should create a new category" do
            post :create, :category=> {:name => "botnet", :impact => "botnet"}
            assigns(:category).should_not be_nil
            assigns(:category).name.should == "botnet"
            assigns(:category).impact.should == "botnet"
        end

        it "should be successful" do
            response.should be_success
        end
    end
end

