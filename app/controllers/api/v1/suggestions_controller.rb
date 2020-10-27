class Api::V1::SuggestionsController < ApplicationController

    before_action :set_artist

    def index
        @suggestions = @artist.suggestions
        render json: @suggestions
    end

    def create
        @suggestion = @artist.suggestions.build(suggestion_params)
        if @suggestion.save
            render json: @artist
        else
            render json: {error: "Couldn't add suggestion"}
        end
    end

    def show
        @suggestion = Suggestion.find(params[:id])
        render json: @suggestion
    end

    def destroy
        @suggestion = Suggestion.find(params["id"])
        @artist = Artist.find(@suggestion.artist_id)
        if @suggestion.destroy
          render json: @artist
        else
          render json: {error: "Couldn't delete suggestion"}
        end
    end

    private

    def set_artist
        @artist = Artist.find(params[:artist_id])
    end

    def suggestion_params
        params.require(:suggestion).permit(:artist_id, :artist_suggestion, :notable_songs, :description)
    end
end
