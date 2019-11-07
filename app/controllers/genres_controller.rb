class GenresController < ApplicationController
    before_action :findGenre, only: [:show, :edit, :update]

    def index
        @genres = Genre.all
    end
    
    def show
    end

    def new
       @genre = Genre.new

    end

    def create 
        @genre = Genre.new(genreParams)
        if @genre.save
            redirect_to @genre
        else
            flash[:errors] = @genre.errors.full_messages
            redirect_to genres_path
        end
    end

    def edit
    end

    def update
        if @genre.update(genreParams)
            redirect_to @genre
        else
            flash[:errors] = @genre.errors.full_messages
            redirect_to genres_path
        end
    end

    def genreParams
        params.require(:genre).permit(:name)
    end

    def findGenre
        @genre = Genre.find(params[:id])
    end


end
