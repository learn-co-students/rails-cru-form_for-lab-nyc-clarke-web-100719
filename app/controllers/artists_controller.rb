class ArtistsController < ApplicationController

    before_action :findArtist, only: [:show, :edit, :update]

    def index
        @artists = Artist.all
    end
    
    def show
    end

    def new
       @artist = Artist.new

    end

    def create 
        @artist = Artist.new(artistParams)
        if @artist.save
            redirect_to @artist
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to artists_path
        end
    end

    def edit
    end

    def update
        if @artist.update(artistParams)
            redirect_to @artist
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to artists_path
        end
    end

    def artistParams
        params.require(:artist).permit(:name, :bio)
    end

    def findArtist
        @artist = Artist.find(params[:id])
    end

end
