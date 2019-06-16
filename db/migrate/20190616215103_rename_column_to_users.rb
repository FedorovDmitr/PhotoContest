class RenameColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :username, :first_name
      t.rename :nickname, :last_name
    end
    add_column :users, :photo, :string
  end
end
