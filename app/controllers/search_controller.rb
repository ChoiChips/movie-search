require 'httparty'
require 'json'
require 'pry'

class SearchController < ApplicationController
  include HTTParty

  def index
    @movie_results
    @search_payload
    @movie_title = params[:movie_title]

    if params[:movie_title]
      @search_payload = HTTParty.post("http://www.omdbapi.com/?apikey=#{ENV['OMDB_API_KEY']}&",
        query: { s: params[:movie_title] }
      )
      if @search_payload["Search"]
        @movie_results = @search_payload["Search"]
      else
        @movie_results = "No results found."
      end
    end

    render :action => :index
  end

  private
  def search_params
    params.require(:require).permit(:movie_title)
  end
end
