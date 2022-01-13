require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :routing do 

    describe 'routing' do 

        it 'routes to #index' do 
          expect(get: '/api/v1/products').to route_to('api/v1/products#index')
        end

        it 'routes to #create' do 
          expect(post: 'api/v1/products').to route_to('api/v1/products#create')
        end

        it 'routes to #destroy' do 
          expect(delete: 'api/v1/products/10').to route_to('api/v1/products#destroy', id: "10")
        end

        it 'routes to #filter_flammable' do 
            expect(get: 'api/v1/filterFlammable').to route_to('api/v1/products#filter_flammable')
        end

         it 'routes to #filterQtyDes' do 
            expect(get: 'api/v1/filterQtyDes').to route_to('api/v1/products#filter_by_qty_des')
        end

         it 'routes to #filterQtyAsc' do 
            expect(get: 'api/v1/filterQtyAsc').to route_to('api/v1/products#filter_by_qty_asc')
        end

    end 
    
end 