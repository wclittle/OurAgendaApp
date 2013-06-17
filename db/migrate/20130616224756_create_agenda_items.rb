class CreateAgendaItems < ActiveRecord::Migration
  def change
    create_table :agenda_items do |t|
      t.string :title
      t.text :description 
      t.integer :meeting_id #this links it to a meeting
      t.integer :user_id #the user who made it       
      t.timestamps
    end
    add_index :agenda_items, :meeting_id #don't forget these 
    add_index :agenda_items, :user_id    
  end
end    