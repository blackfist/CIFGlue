class DropTableActions < ActiveRecord::Migration
  def up
      drop_table :actions
  end

  def down
  end
end
