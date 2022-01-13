require 'rails_helper'
require'spec_helper'


RSpec.describe Api::V1::ProductsController, type: :controller do
    
    let!(:product) {FactoryBot.create(:product)}


    describe 'GET #index' do
        before do 
            get :index 
        end

        it 'should return 200:OK' do 
            expect(response).to have_http_status(:success)
        end

        it 'is assigns all products as products' do       
            expect(assigns[:products]).to eq(@product)
        end
    end
end 