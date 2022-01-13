 require 'rails_helper'

RSpec.describe Api::V1::SuppliersController, type: :routing do 

    describe 'routing' do 
        it 'routes to #index' do 
          expect(get: 'api/v1/suppliers').to route_to('api/v1/suppliers#index')
        end
    end 

end 