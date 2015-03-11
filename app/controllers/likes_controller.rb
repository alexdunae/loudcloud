class LikesController < ApplicationController
  # helper_method :current_song

  def create
    current_song.likes.create

    respond_to do |format|
      format.js { render 'changed' }
    end
  end

  def current_song
    returnSong.find(params[:song_id])
    # @_song ||= Song.find(params[:song_id])
  end
end
