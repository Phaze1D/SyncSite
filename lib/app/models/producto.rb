class Producto < ActiveRecord::Base
  establish_connection CENTER_CONF

  has_many :inventarios, :foreign_key => "id_producto"
  
end
