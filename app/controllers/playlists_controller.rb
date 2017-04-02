class PlaylistsController < ApplicationController
  def index
  end

  def new
    @playlist = Playlist.new
    @songs    = Song.all
  end

  def create
    @playlist = Playlist.find_or_create_by(playlist_params)
    redirect_to playlist_path(@playlist)
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end

end
