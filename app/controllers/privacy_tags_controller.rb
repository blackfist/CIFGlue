class PrivacyTagsController < ApplicationController
  def index
      @privacy_tags = PrivacyTag.all
  end
end
