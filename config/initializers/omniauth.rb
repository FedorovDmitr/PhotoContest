Rails.application.config.middleware.use OmniAuth::Builder do
  vk_key = Rails.application.credentials.VKONTAKTE_KEY
  vk_secret = Rails.application.credentials.VKONTAKTE_SECRET
  provider :vkontakte, vk_key, vk_secret,
           scope: %w[email photos offline wall],
           display: 'popup',
           lang: 'ru',
           https: 1,
           image_size: 'original',
           info_fields: 'id,first_name,last_name'
end
