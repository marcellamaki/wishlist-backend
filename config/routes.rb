Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :goods, only: [:index, :create, :destroy]

    post '/login', to: 'users#authenticate'

    get '/goods/locations', to: 'goods#locations'
    post '/questions', to: 'questions#index'
    get '/getUser', to: 'users#get_user'
    post '/users/:id/questions', to: 'questions#index'
    post '/checkin', to: 'checkins#create'
    delete '/questions/:id', to: 'questions#destroy'


    end
  end
end
