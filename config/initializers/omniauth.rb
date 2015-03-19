OmniAuth.config.logger = Rails.logger

GOOGLE_CONFIG = YAML.load_file("#{::Rails.root}/config/google.yml")[::Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_CONFIG['client_id'], GOOGLE_CONFIG['secret'], 
  {
    :image_aspect_ratio => "square",
    :image_size => 160
  }
end
