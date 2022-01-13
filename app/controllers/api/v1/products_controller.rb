require 'csv'

class Api::V1::ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
    end 

    def show
        product = Product.find(params[:id])
        render json: product
    end

    def create 
        product = Product.new(product_params)
        if product.save
            render json: product 
        else 
            render json: {errors: product.errors.full_messages}
        end 
    end 

    def update
        product = Product.find(params[:id])
        product.update(product_params)
        render json: product
    end 
    
    def destroy
        product = Product.find(params[:id])
        product.destroy
        render json: product 
    end 

    def export 
        products = Product.all

        respond_to do |format|
        
            format.csv do 
                response.headers['Content-Type'] = 'text/csv'
                response.headers['Content-Disposition'] = 'attachment; filename=products-#{Date.today}.csv'
                send_data(Product.to_csv(products), :type => "text/csv", :filename => "products-#{Date.today}.csv")
            end
        end
    end 

    def filter_flammable
        products = Product.all.select {|p| p.flammable == "YES"}
        render json: products 
    end

    def filter_by_qty_asc
        products = Product.all.sort_by(&:QTY)
        render json: products 
    end

    def filter_by_qty_des
        products = Product.all.sort{|a,b| b.QTY <=> a.QTY}
        render json: products 
    end 


    private
    def product_params
        params.require(:product).permit(:UPC, :SKU, :QTY, :weight, :dimensions, :flammable, :supplier)
    end 
end
