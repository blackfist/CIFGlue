class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name
      t.string :impact

      t.timestamps
    end
  end
end
