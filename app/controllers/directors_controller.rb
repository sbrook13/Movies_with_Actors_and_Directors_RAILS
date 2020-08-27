class DirectorsController < ApplicationController
    def index
        @directors = Director.all 
        render json: @directors, include: [:movies, :actors]
    end

    def create
        @director = Director.create(
            name: params[:name]
        )
    end
end
