class AddCategoryIDtoIndicator < ActiveRecord::Migration
  def up
      add_column :indicators, :category_id, :integer
  end

  def down
      remove_column :indicators, :category_id
  end
end
