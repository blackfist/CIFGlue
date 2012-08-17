require 'spec_helper'

describe PrivacyTagsController do
    describe 'get index' do
        it 'gets the index view' do
            get 'index'
            response.status.should be 200
        end
    end

    describe 'get new' do
        it 'should be successful' do
            get 'new'
            response.should be_success
        end
    end

    describe '#create' do
        it 'should create a new privacy tag' do
            post :create, "privacy_tag" => {:content => "Green"}
            assigns(:privacy_tag).should_not be_nil
            assigns(:privacy_tag).content.should == "Green"
        end

        it 'should redirect to the privacy tag list page' do
            post :create, "privacy_tag" => {:content => "Green"}
            response.should redirect_to privacy_tags_path
        end
    end
                    
end
