require 'spec_helper'

describe ActionsController, "Create, Read, Update, and Destroy Actions" do
    describe "new" do
        before do
            get :new
        end

        it "should be successful" do
            response.should be_success
        end

        it "should create an action object" do
            assigns(:action).should_not be_nil
        end
    end

    describe "create" do
        it "should create a new action" do
            post :create, :action => {:name => "botnet", :impact => "botnet"}
            assigns(:action).should_not be_nil
            assigns(:action).name.should == "botnet"
            assigns(:action).impact.should == "botnet"
        end
    end
end

