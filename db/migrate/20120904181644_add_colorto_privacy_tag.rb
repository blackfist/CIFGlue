class AddColortoPrivacyTag < ActiveRecord::Migration
  def up
    add_column :privacy_tags, :color, :string
  end

  def down
    remove_column :privacy_tags, :color
  end
end
