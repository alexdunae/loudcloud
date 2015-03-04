class LikesController < ApplicationController
  helper_method :current_song

  def create
    current_song.likes.create!

    respond_to do |format|
      format.html { redirect_to song_path(current_song) }
      format.js { render 'changed', status: :created }
    end
  end

  def current_song
    @_song ||= Song.find(params[:song_id])
  end
end
