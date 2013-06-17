class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :commentable, :polymorphic => true 
      t.integer :user_id
      t.timestamps
    end
  end
end
   