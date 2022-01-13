FactoryBot.define do 
    factory :product do
        UPC{123}
        SKU{"12-MNGL-1" }
        QTY{:QTY}
        weight{:weight}
        dimensions{:dimensions}
        flammable{:flammable}
        supplier{:supplier}
    end 

    factory :supplier do
        supplier_code {:supplier_code}
        name{:name}
    end 
end 