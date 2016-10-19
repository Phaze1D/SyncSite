class Product < ActiveRecord::Base
  establish_connection WEBSITE_CONF
  
end
