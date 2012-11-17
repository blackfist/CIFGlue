class RenameActions < ActiveRecord::Migration
  def up
      rename_table :actions, :categories
  end
end
