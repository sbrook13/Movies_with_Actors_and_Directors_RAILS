class MoviesController < ApplicationController
    def index
        @movies = Movie.all 
        render json: @movies, include: [:actor, :director]
    end

    def show
        @movie = Movie.find(params[:id])
        render json: @movie, include: [:actor, :director]
    end

    def create
        @movie = Movie.create(
            title: params[:title],
            actor_id: params[:actor_id],
            director_id: params[:director_id]
        )
        render json: @movie, include: [:actor, :director]
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(
            title: params[:title],
            actor_id: params[:actor_id],
            director_id: params[:director_id] 
        )
        render json: @movie, include: [:actor, :director]
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        render json: {message: "Movie destroyed"}
    end
end
