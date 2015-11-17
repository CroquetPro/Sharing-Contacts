class UpdateUsersCreateContacts < ActiveRecord::Migration
  def change

    add_column :users, :username, :integer
    User.all.each do |user|
      user.update!(:username => user.id)
    end
    remove_column :users, :name
    remove_column :users, :email
    add_index :users, :username, {unique: true}

    change_column :users, :username, :integer, null: false

    create_table :contact do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end

      add_index :contact, :user_id, { unique: true }
  end
end
