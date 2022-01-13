require 'rails_helper'
require'spec_helper'

RSpec.describe Api::V1::SuppliersController, type: :controller do
    
    let!(:supplier) {FactoryBot.create(:supplier)}

    describe 'GET #index' do
        before do 
            get :index 
        end

        it 'should return 200:OK' do 
            get :index
            expect(response).to have_http_status(:success)
        end

        it 'assigns suppliers' do 
            expect(assigns(:suppliers)).to eq(@supplier)
        end

    end
end