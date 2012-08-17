class CreatePrivacyTags < ActiveRecord::Migration
  def change
    create_table :privacy_tags do |t|
      t.string :content

      t.timestamps
    end
  end
end
