class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|
      t.string :title
      t.text :description 
      t.integer :user_id
      t.integer :meeting_id
      t.timestamps
    end
    add_index :action_items, :meeting_id 
    add_index :action_items, :user_id      
  end
end  