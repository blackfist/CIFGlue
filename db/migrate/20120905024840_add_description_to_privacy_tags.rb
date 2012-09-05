class AddDescriptionToPrivacyTags < ActiveRecord::Migration
  def change
    add_column :privacy_tags, :description, :text
  end
end
