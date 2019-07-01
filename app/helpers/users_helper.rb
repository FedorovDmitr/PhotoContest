module UsersHelper
  def profile_image_for(user)
    image_tag(user.img,
              alt: "#{user.first_name} #{user.last_name}",
              class: 'profile_image')
  end

  def full_name
    "#{user.first_name} #{user.last_name}"
	end
end
