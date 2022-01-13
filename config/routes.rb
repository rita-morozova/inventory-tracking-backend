Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            resources :products
            resources :suppliers, only: [:index]

            get 'export', to: 'products#export', defaults: {format: :csv}
            get 'filterFlammable', to: 'products#filter_flammable'
            get 'filterQtyDes', to: 'products#filter_by_qty_des'
            get 'filterQtyAsc', to: 'products#filter_by_qty_asc'
        end
    end
end
