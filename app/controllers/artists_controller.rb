class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :image_url, albums_attributes: [:id, :name, :image_url, :released_at]) 
    end
end
