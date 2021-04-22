module Api 
    module V1
        class MoviesController < ApplicationController

            def index 
                movies = Movie.all
                #render json: movies.select('id', 'name', 'description', 'gender', 'censorship', 'director_id')
                render json: {status:'SUCCESS', message: 'lista de filmes', data: movies.select('id', 'name', 'description', 'gender', 'censorship', 'director_id')} #status: :ok
            end
        
            def show
                if Movie.exists?(params[:id])
                    movie = Movie.find(params[:id])
                    #render json: movie  #status: :ok 
                    render json: {id: movie.id , name: movie.name , description: movie.description, gender:movie.gender, censorship: movie.censorship, director: movie.director.name} #status: :ok 
                else
                    render json: {status: 'ERROR', message: 'falha ao mostrar filme, id não existente'} #status: :unprocessable_entity
        
                end
            end
        
            def destroy
                if Movie.exists?(params[:id])
                    movie = Movie.find(params[:id])
                    if movie.destroy!
                        render json: {status:'SUCESSS', message:'filme foi apagado'} #status: :ok
                    else
                        render json: {status:'ERROR', message:'falha ao apagar filme'} #status: :bad_request
                    end
                else
                    render json: {status: 'ERROR', message: 'falha ao mostrar filme, id não existente'} #status: :bad_request
        
                end
                
            end
        
            def create
        
               movie = Movie.new(movies_params)
               if movie.save
                    render json: movie 
               else
                    render json: {status:'ERROR', message: 'falha ao criar o filme ' } #status: :unprocessable_entity
               end 
        
            end
        
            def update
                if Movie.exists?(params[:id])
                    movie = Movie.find(params[:id])
                    if movie.update(movies_params)
                        render json: {name: movie.name, description: movie.description, gender: movie.gender, censorship: movie.censorship, director_id: movie.director} # status: :ok
                    else
                        render json: {status: 'ERROR', message: 'falha ao editar filme', data: movie} #status: :bad_request 
                    end    
                else
                    render json: {status: 'ERROR', message: 'falha ao editar filme, id não existente'} #status: :bad_request
                end    
        
            end
        
            private
            def movies_params
        
                params.require(:movie).permit(:name, :description, :gender, :censorship, :director_id)
            end
        
        end
        
    end
end








