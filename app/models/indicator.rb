class Indicator < ActiveRecord::Base
  attr_accessible :analyst, :case, :content, :description, :friendly_name

  validates :content, :description, :analyst, :presence => true

  def friendly_name
      "indicator"
  end
end
