class CreateVeris < ActiveRecord::Migration
  def change
    create_table :veris do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
