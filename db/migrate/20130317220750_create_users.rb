class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name,      :null => false
      t.string :last_name,       :null => false
      t.string :username,        :null => false, :limit => 32
      t.string :email,           :null => false
      t.integer :total_karma       

      t.timestamps
    end
    add_index(:users, :username) 
    add_index(:users, :total_karma) 
   end
end
