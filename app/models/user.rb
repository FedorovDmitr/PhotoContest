class User < ApplicationRecord

  def self.find_or_create_from_auth_hash(auth_hash)
	where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_initialize.tap do |user|
		user.provider = auth_hash.provider
		user.uid = auth_hash.uid
		user.first_name = auth_hash.info.first_name
		user.last_name = auth_hash.info.last_name
		user.photo= auth_hash.info.image
		user.save!
	end
  end
end