class Inventario < ActiveRecord::Base
  establish_connection CENTER_CONF
  self.table_name = "inventario"

  belongs_to :producto
  
end
