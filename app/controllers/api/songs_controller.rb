class Api::SongsController < ApplicationController
  def index
    @song = Song.all
    render "index.json.jb"
  end
  
  def show
    @song = Song.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    @song.save
    render "show.json.jb"
  end

  def update
    
  end

  def destroy
  end

end
