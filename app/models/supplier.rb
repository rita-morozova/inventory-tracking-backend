class Supplier < ApplicationRecord
   validates :name, uniqueness: true, presence: true
   validates :supplier_code, uniqueness: true, presence: true
end
