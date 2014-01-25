class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.tinyint :permission

      t.timestamps
    end
    
    add_index "users", ["email"], name: "index_users_on_email", unique: true
    
  end
end
