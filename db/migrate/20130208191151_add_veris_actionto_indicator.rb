class AddVerisActiontoIndicator < ActiveRecord::Migration
  def up
      add_column :indicators, :veris_action, :string
  end

  def down
  end
end
