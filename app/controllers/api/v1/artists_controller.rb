class Api::V1::ArtistsController < ApplicationController

    def index
        @artists = Artist.all
        render json: @artists
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
            render json: @artist
        else
            render json: {error: "Couldn't add artist"}
        end
    end

    def show
        @artist = Artist.find(params[:id])
        render json: @artist
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :genre)
    end

end
