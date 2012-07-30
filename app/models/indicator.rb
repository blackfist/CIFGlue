class Indicator < ActiveRecord::Base
  attr_accessible :analyst, :case, :content, :description, :friendly_name
  validates :content, :description, :analyst, :presence => true
  scope :others, where(:type => nil)
  scope :by_type, lambda { |type| where(:type => type) }
      

  def friendly_name
      "indicator"
  end
end
