class AddPrivacyTagIdToIndicator < ActiveRecord::Migration
  def change
    add_column :indicators, :privacy_tag_id, :integer
  end
end
