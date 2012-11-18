class Indicator < ActiveRecord::Base
  attr_accessible :analyst, :case, :content, :description, :type, :privacy_tag_id, :alternateid, :category_id
  validates :content, :description, :analyst, :privacy_tag_id, :case, :presence => true
  scope :others, where(:type => nil)

  belongs_to :privacy_tag
  belongs_to :category


  def friendly_name
      "indicator"
  end

  def Privacy
      PrivacyTag.find(privacy_tag_id).content
  end

  def PrivacyColor
      "privacy privacy-" + PrivacyTag.find(privacy_tag_id).color
  end

  def self.by_type(type = 'all')
      if type.nil? or type == '' or type.downcase == 'all'
          # Using Indicator.scoped so that it returns an ActiveRecord Relation rather than an array.
          # The datatable class requires an ActiveRecord Relation in order to sort the results of
          # This method
          Indicator.scoped
      elsif type.downcase == "other"
          Indicator.others
      else
          Indicator.where(:type => type)
      end
  end
end
