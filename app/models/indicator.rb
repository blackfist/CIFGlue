class Indicator < ActiveRecord::Base
  attr_accessible :analyst, :case, :content, :description

  validates :content, :description, :analyst, :presence => true
end
