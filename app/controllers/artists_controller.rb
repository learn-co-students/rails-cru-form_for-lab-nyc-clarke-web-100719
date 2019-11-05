class ArtistsController < ApplicationController


    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def create
        @artist= Artist.create(filtered_params)
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(filtered_params)
        redirect_to artist_path(@artist)
    end

    private

    def filtered_params
        params.require(:artist).permit(:name, :bio)
    end
end
