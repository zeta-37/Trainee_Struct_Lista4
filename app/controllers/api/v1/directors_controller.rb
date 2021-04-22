module Api 
    module V1

        class DirectorsController < ApplicationController
    
    

            def show
                if Director.exists?(params[:id])
                    director = Director.find(params[:id])
                    render json: director #status: :ok 
                    
                
                else
                    render json: {status: 'ERROR', message: 'falha ao mostrar diretor, id não existente'} #status: :unprocessable_entity
        
                end
            end
        
            def create
        
                director = Director.new(movies_params)
                if director.save
                     render json: director 
                else
                     render json: {status:'ERROR', message: 'falha ao criar o autor ' } #status: :unprocessable_entity
                end 
         
             end

            def meus_filmes
                if Director.exists?(params[:id])
                    director = Director.find(params[:id])
                    render json: {name:director.name, movies:director.movies}#status: :ok 
                
                else
                    render json: {status: 'ERROR', message: 'falha ao mostrar diretor, id não existente'} #status: :unprocessable_entity
                end    
            end
        
             private
             def directors_params
         
                 params.require(:director).permit(:name, :age,)
             end
        
            
        end
        

    end
end



