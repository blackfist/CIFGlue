class CreateTableVerisActions < ActiveRecord::Migration
  def up
      create_table "veris_actions", :force => true do |t|
          t.string "name"
          t.string "description"
          t.datetime "created_at",  :null => false
          t.datetime "updated_at",  :null => false
      end
  end

  def down
  end
end
