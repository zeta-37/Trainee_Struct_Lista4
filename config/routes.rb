Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1'do
      scope 'movies/' do

        get 'index', to: 'movies#index',  as: 'index_movies'
        get 'show/:id', to: 'movies#show', as: 'show_movie'
        delete 'destroy/:id', to:'movies#destroy', as:'destroy_movie'
        post 'create', to:'movies#create', as: 'create_movie'
        put 'update/:id', to:'movies#update', as:'update_movie'
      end 
    
      scope 'directors/' do
    
        get 'show/:id', to: 'directors#show',  as: 'directors_info'
        post 'create', to:'directors#create', as: 'create_director'
        get 'meus_filmes/:id', to:'directors#meus_filmes', as:'director_movies'
      end
  

    end
  end
 
end

