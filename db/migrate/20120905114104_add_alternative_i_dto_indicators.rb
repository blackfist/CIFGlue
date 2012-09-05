class AddAlternativeIDtoIndicators < ActiveRecord::Migration
  def up
      add_column :indicators, :alternateid, :string
  end

  def down
      remove_column :indicators, :alternateid
  end
end
