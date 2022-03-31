class MoviesController < ApplicationController
  def index
    response = HTTP.get("https://imdb-api.com/en/API/Top250Movies/(Rails.application.credentials.system.access_key_id)")
    render json: response.parse(:json)
  end
end
