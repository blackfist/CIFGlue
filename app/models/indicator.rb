class Indicator < ActiveRecord::Base
  attr_accessible :analyst, :case, :content, :description, :friendly_name
  validates :content, :description, :analyst, :presence => true
  scope :others, where(:type => nil)

  def friendly_name
      "indicator"
  end

  def self.by_type(type = 'all')
      puts "### the detected type is " + type
      if type.nil? or type == '' or type.downcase == 'all'
          puts "### Empty type, returning all"
          # Using Indicator.scoped so that it returns an ActiveRecord Relation rather than an array.
          # The datatable class requires an ActiveRecord Relation in order to sort the results of
          # This method
          Indicator.scoped
      elsif type.downcase == "other"
          puts "### returning everything which is undefined"
          Indicator.others
      else
          puts "#### Catch all type.  Returning type ==" +type
          Indicator.where(:type => type)
      end
  end
end
