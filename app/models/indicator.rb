class Indicator < ActiveRecord::Base
  attr_accessible :analyst, :case, :content, :description, :friendly_name
  validates :content, :description, :analyst, :presence => true
  scope :others, where(:type => nil)

  def friendly_name
      "indicator"
  end

  def self.by_type(type)
      if type.nil?
          Indicator.all
      elsif type.downcase == "other"
          Indicator.others
      else
          Indicator.where(:type => type)
      end
  end
end
