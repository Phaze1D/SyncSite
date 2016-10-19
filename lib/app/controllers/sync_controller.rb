
class SyncController

  def sync_databases

    Producto.all.each do | producto |
      sum = producto.inventarios.sum(:cantidad)
      wproduct = Product.find_by(plu: producto.clave)

      if wproduct
        wproduct.stock = (sum > 3) ? 2 : 0
        wproduct.price = producto.precio
        wproduct.save
      end
    end
  end
end
