Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :artworks
      resources :gallery_walls
      resources :users

      post '/signup', to: 'users#signup'
      post '/signin', to: 'users#signin'
      get '/validate', to: 'users#validate'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
