class RemoveCategoryIdfromIndicators < ActiveRecord::Migration
  def up
      remove_column :indicators, :category_id
      add_column :indicators, :category, :string
  end

  def down
  end
end
