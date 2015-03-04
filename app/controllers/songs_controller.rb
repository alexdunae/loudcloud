class SongsController < ApplicationController
  helper_method :current_song

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def current_song
    @_song ||= Song.find(params[:id])
  end
end
