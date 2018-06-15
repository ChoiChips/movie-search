require "rails_helper"
require 'pry'

RSpec.describe SearchController, type: :controller do

  describe "GET#index" do
    describe "It returns valid movie search results" do
      it "should return an array containing the movie results" do
        search_query = "John"

        get :index, params: { movie_title: "#{search_query}" }

        movie_results = response.request.env["action_controller.instance"].instance_variable_get(:@movie_results)

        expect(response.status).to eq 200
        expect(response.content_type).to eq("text/html")
        expect(movie_results.instance_of? Array).to eq(true)

      end
    end

    describe "It does not return valid movie search results" do
      it "should return a string with message" do
        search_query = "tkjaskdf"

        get :index, params: { movie_title: "#{search_query}" }

        movie_results = response.request.env["action_controller.instance"].instance_variable_get(:@movie_results)

        expect(response.status).to eq 200
        expect(response.content_type).to eq("text/html")
        expect(movie_results.instance_of? Array).to eq(false)
        expect(movie_results).to eq("No results found.")

      end
    end
  end
end
