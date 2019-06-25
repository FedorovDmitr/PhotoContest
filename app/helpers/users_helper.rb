module UsersHelper
  def profile_image_for(user)
    image_tag(user.photo,
              alt: "#{user.first_name} #{user.last_name}",
              class: 'profile_image')
  end
end
