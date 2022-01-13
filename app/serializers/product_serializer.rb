class ProductSerializer < ActiveModel::Serializer
  attributes :id, :UPC, :SKU, :QTY, :weight, :dimensions, :flammable, :supplier
end
