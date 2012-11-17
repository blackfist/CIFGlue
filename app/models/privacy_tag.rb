class PrivacyTag < ActiveRecord::Base
  COLORS = ["Red","Orange","Yellow","Green","Blue","Black","White"]

  attr_accessible :content, :color, :description
  validates :content, :presence => true, :uniqueness => { :message => '^privacy tag already exists.' } 
  validates :color, :presence => true, :inclusion => { :in => COLORS }

  has_many :indicators

  def PrivacyColorClass
      "privacy privacy-"+color
  end



end
