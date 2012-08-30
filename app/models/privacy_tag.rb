class PrivacyTag < ActiveRecord::Base
  attr_accessible :content
  validates :content, :presence => true, :uniqueness => { :message => '^privacy tag already exists.' } 
end
