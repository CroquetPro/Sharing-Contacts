class ChangeContactToContacts < ActiveRecord::Migration
  def change
    rename_table :contact, :contacts
  end
end
