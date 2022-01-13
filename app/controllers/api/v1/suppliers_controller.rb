class Api::V1::SuppliersController < ApplicationController

    def index
        suppliers = Supplier.all
        render json: suppliers
    end 

    def supplier_params
        params.require(:supplier).permit(:id, :supplier_code, :name)
    end 
    
end
