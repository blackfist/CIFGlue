class AddVerisActiontoIndicators < ActiveRecord::Migration
  def up
      add_column :indicators, :VERIS_action, :string
  end

  def down
      remove_column :indicators, :VERIS_action
  end
end
