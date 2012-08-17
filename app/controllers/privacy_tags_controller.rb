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
          redirect_to privacy_tags_path, notice: 'Privacy tag ' + @privacy_tag.content + '  was successfully updated.'
      end
  end
end



