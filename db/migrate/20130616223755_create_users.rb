class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps
    end
    #we need to add a join table for our has_and_belongs_to_many relationship
    #model order needs to be alphabetical ("meetings_users" vs "users_meetings")
    create_table :meetings_users do |t|
      t.integer :meeting_id
      t.integer :user_id 
    end
    #add an index to speed queries up
    add_index(:meetings_users, [:meeting_id, :user_id])
  end
end
