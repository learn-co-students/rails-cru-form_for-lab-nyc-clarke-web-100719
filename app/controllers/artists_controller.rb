class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
    render :index
  end

  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.create(artist_params)

    if @artist.valid?
      redirect_to artist_path(@artist)
    else
      flash[:messages] = @artist.errors.full_message
      redirect_to new_artist_path
    end
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      flash[:messages] = @artist.errors.full_message
      redirect_to edit_artist_path
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
