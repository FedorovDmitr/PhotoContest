class ChangeToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :url, :uid
    end

  end
end
