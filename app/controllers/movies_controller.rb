class  MoviesController < ApplicationController
# require 'eventmachine'
# require 'faye/websocket'
# require 'HTTParty'
# respond_to? :json

def show
  @movie = Movie.find(params[:id])
  json_response(@movie)
end

def movie_list
  @movie = Movie.all
  json_response(@movie)
end

  # POST /todos
  def create
    @movie = Movie.create!(movie_params)
    json_response(@movie)
  end

  private
  def movie_params
    params.require(:movie).permit(:id, :name, :actor, :actress, :created_at, :updated_at)
  end
end
