class PrivacyTagsController < ApplicationController
  def index
      @privacy_tags = PrivacyTag.all
  end

  def new
      @privacy_tag = PrivacyTag.new
  end

  def create
      @privacy_tag = PrivacyTag.new(params[:privacy_tag])
      if @privacy_tag.save
          redirect_to privacy_tags_path, :notice => 'Privacy tag ' + @privacy_tag.content + '  was successfully updated.'
      else
         redirect_to new_privacy_tag_path, :alert => @privacy_tag.content + ': ' + @privacy_tag.errors.full_messages.to_sentence.split('^').last
      end 
  end
end



