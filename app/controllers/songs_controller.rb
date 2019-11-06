class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
    render :index
  end

  def new
    render :new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    @song.update(song_params)
    binding.pry
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def set_song
    @song = Song.find(params[:id])
  end

end
