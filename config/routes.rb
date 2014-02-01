Rangeover::Application.routes.draw do
  get 'tracks' => 'tracks#index'
  resources :tracks

  get 'geolocations' => 'geolocations#index'
  resources :geolocations

  resources :contacts, only:[:new, :create]
  # %w[about contact show help].each do |page|
  #   get page, controller: 'pages', action: page
  # end

  get 'help' => 'pages#show'
  # get "pages/about"
  # get "pages/help"
  # get "pages/show"
  # get "pages/contact"
  get 'geocode' => 'geocode#index'
  get "geocode/index"
  get "geocode/show"
  get "geocode/new"
  get "geocode/list"
  resources :tdwg_gazetteers

  resources :tdwg_level_fours

  resources :tdwg_level_threes

  resources :tdwg_level_twos

  resources :tdwg_level_ones

  resources :tbl_level1s

  # get "upload/index"
  # get "contact/index"
  # get "about/index"
  # get "helps/index"
  resources :categories
  # resources :helps
  resources :batch

  # get 'batch' => 'batch#index'
  # get 'helps' => 'helps#index'
  # get 'about' => 'about#index'
  # get 'contact' => 'contact#index'
  get 'upload' => 'upload#index'
  # get 'batch/index'


  resources :collections
  devise_for :users
  resources :gazetteers

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => "welcome#index"
  # root :to => "gazetteers#index"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
