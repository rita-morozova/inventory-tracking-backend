class Product < ApplicationRecord
    validates :UPC, presence: true, uniqueness: true
    validates :SKU, presence: true, uniqueness: true

    def self.to_csv(products)
        CSV.generate(headers: true) do |csv|
            columns = []
            columns.concat(column_names)
            csv << columns
            products.each do |product|
                values = []
                values.concat(product.attributes.values_at(*column_names))
                csv << values
            end
        end
    end
        
end
