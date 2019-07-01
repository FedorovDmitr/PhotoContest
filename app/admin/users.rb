ActiveAdmin.register User do

  actions :all, except: [:edit, :update]

  index do
    column :first_name
    column :last_name
    column :img
    column :photo
    column :uid
    actions
  end
 
  sidebar 'Photo by this User', :only => :show do
    table_for Photo.joins(:user).where(:user_id => user.id) do |t|
      t.column("Title") { |photo| photo.name }
    end
  end

end
