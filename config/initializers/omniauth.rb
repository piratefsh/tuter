OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], 
  client_options: {ssl: {ca_file: Rails.root.join('lib/assets/cacert.pem').to_s}}, 
  :scope => 'email', :display => 'popup', :image_size => "large"
 end


