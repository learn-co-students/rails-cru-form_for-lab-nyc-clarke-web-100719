class SongsController < ApplicationController
    before_action :findSong, only: [:show, :edit, :update]

    def index
        @songs = Song.all
    end
    
    def show
    end

    def new
       @song = Song.new

    end

    def create 
        @song = Song.new(songParams)
        if @song.save
            redirect_to @song
        else
            flash[:errors] = @song.errors.full_messages
            redirect_to songs_path
        end
    end

    def edit
    end

    def update
        if @song.update(songParams)
            redirect_to @song
        else
            flash[:errors] = @song.errors.full_messages
            redirect_to songs_path
        end
    end

    def songParams
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def findSong
        @song = Song.find(params[:id])
    end


end
