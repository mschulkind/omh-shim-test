Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, 
    '6fa6c4f6e957429bb32bea2e4f5b59f4', 'cae324dc35044c71ada7b4e43c1d1fb1'
end
