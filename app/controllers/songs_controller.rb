class SongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find_or_create_by(song_parameters)
    redirect_to song_path(@song)
  end

  private

  def song_parameters
    params.require(:song).permit(:title, :artist_id)
  end


end
