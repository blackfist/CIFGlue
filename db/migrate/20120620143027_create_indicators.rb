class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
      t.string :content
      t.string :case
      t.text :description
      t.string :analyst

      t.timestamps
    end
  end
end
