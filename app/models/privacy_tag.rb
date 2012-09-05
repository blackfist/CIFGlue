class PrivacyTag < ActiveRecord::Base
  COLORS = ["Red","Orange","Yellow","Green","Blue","Black","White"]

  attr_accessible :content, :color
  validates :content, :presence => true, :uniqueness => { :message => '^privacy tag already exists.' } 
  validates :color, :presence => true, :inclusion => { :in => COLORS }

  has_many :indicators

  def PrivacyColorClass
      "privacy privacy-"+color
  end

  def description
      if read_attribute(:description).nil?
          " "
      else
          read_attribute(:description)
      end
  end


end
