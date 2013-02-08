class CreateVerisActions < ActiveRecord::Migration
  def change
    create_table :veris_actions do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
