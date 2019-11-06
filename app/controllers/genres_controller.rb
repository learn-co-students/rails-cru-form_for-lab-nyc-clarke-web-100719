class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update]

  def index
    @genres = Genre.all
    render :index
  end

  def new
    @genre = Genre.new
    render :new
  end

  def create
    @genre = Genre.create(genre_params)

    if @genre.valid?
      redirect_to genre_path(@genre)
    else
      flash[:messages] = @genre.errors.full_message
      redirect_to new_genre_path
    end
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    if @genre.update(genre_params)
      redirect_to genre_path(@genre)
    else
      flash[:messages] = @genre.errors.full_message
      redirect_to edit_genre_path
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end

end
