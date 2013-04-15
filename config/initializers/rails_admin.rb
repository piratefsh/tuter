ADMIN_EMAILS= ['faiz@tuter.me', 'sherminn@tuter.me', 'serbus@tuter.me', 
	           'tjjo@hd.wisc.edu', 'adthorson@tuter.me']

RailsAdmin.config do |config|
  config.authorize_with :cancan, Ability
end
