class PrivacyTagsController < ApplicationController
  def index
      @privacy_tags = PrivacyTag.all
  end

  def new
      @privacy_tag = PrivacyTag.new
  end

  def edit
      @privacy_tag = PrivacyTag.find(params[:id])
  end

  def create
      @privacy_tag = PrivacyTag.new(params[:privacy_tag])
      if @privacy_tag.save
          redirect_to privacy_tags_path, :notice => 'Privacy tag ' + @privacy_tag.content + '  was successfully created.'
      else
         redirect_to new_privacy_tag_path, :alert => @privacy_tag.content + ': ' + @privacy_tag.errors.full_messages.to_sentence.split('^').last
      end 
  end

  def update
      @privacy_tag = PrivacyTag.find(params[:id])

      if @privacy_tag.update_attributes(params[:privacy_tag])
          redirect_to privacy_tags_path, :notice => 'Privacy tag ' + @privacy_tag.content + ' was successfully updated.'
      else
          redirect_to :back, :alert => @privacy_tag.content + ': ' + @privacy_tag.errors.full_messages.to_sentence.split('^').last
      end
  end
end



