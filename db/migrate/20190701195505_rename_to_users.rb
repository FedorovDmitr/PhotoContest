class RenameToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :photo, :img
    end
  end
end
