Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, 
    '6fa6c4f6e957429bb32bea2e4f5b59f4', 'cae324dc35044c71ada7b4e43c1d1fb1'

  provider :withings, 
    'bfb8c6b3bffd8b83b39e67dfe40f81c8289b8d0bbfb97b27953925d6f3bc', 
    'd9182878bc9999158cd748fc2fe12d81ffcce9c9f77093972e93c0f'
end
