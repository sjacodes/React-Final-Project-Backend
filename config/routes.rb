Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :artworks
      resources :gallery_walls
      resources :users
      resources :user_selections
      resources :titles
      resources :captions
      post '/add_artwork', to: 'users#add_artwork'
      patch '/move_artwork', to: 'user_selections#move_artwork'
      patch '/resize_artwork', to: 'user_selections#resize_artwork'
      post '/add_caption', to: 'captions#add'
      patch '/move_caption', to: 'captions#move'
      patch '/resize_caption', to: 'captions#resize'
      patch 'captions/:id/edit', to: 'captions#edit'
      post '/signup', to: 'users#signup'
      post '/signin', to: 'users#signin'
      get '/validate', to: 'users#validate'
      get 'users/:id/galleries', to: 'users#get_galleries'
      get '/current_user_galleries', to: 'users#get_current_user_galleries'

      

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
