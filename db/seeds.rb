# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Supplier.destroy_all
Product.destroy_all

supplier1 = Supplier.create(supplier_code: "2377783", name: "Ajax.Co")
supplier2 = Supplier.create(supplier_code: "8760028", name: "China LLC")
supplier3 = Supplier.create(supplier_code: "1239024", name: "Mexico.Co")

product1 = Product.create(UPC: 78973, SKU: "SBDN_2G2174-GUNBLK", QTY: 10, weight: "0.10oz", dimensions: "10 x 20 x 1", flammable: 'no', supplier: "China CO")
product2 = Product.create(UPC: 129, SKU: "SBDN_1K2189-RED", QTY: 4, weight: "0.8oz", dimensions: "10 x 10 x 1", flammable: 'no', supplier: "America LLC")
product3 = Product.create(UPC: 1278, SKU: "SBDN_3FGDHG-BLKBLU", QTY: 3, weight: "0.9oz", dimensions: "10 x 8 x 1", flammable: 'no', supplier: "America LLC")
product4 = Product.create(UPC: 89038, SKU: "SBDN_4653FG7-GRGRAY", QTY: 200, weight: "0.5oz", dimensions: "10 x 2 x 1", flammable: 'no', supplier: "Strange Toys")