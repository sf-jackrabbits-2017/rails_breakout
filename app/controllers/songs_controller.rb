class SongsController < ApplicationController
  def create
    @song = Song.new(song_params.merge(playlist_id: params[:playlist_id]))

    # {playlist_id: 1, song: {title: "title", artist: "artist"}}
    # {title: "title", artist: "artist"}.merge({playlist_id: "2"})

    if @song.save
      respond_to do |format|
        format.js {}
        format.json { render json: @song }
      end
    else
      respond_to do |format|
        format.js { render :error, status: 422}
      end
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist)
  end
end