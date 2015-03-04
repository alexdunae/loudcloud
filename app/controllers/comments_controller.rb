class CommentsController < ApplicationController
  helper_method :current_song

  def create
    @comment = current_song.comments.create!(comment_params)

    respond_to do |format|
      format.html { redirect_to song_path(current_song) }
      format.js
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def current_song
    @_song ||= Song.find(params[:song_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
