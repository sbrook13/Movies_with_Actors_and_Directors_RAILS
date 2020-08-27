class ActorsController < ApplicationController
    def index
        @actors = Actor.all 
        render json: @actors, include: [:movies, :directors]
    end
end
