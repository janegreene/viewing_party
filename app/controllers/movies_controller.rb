class MoviesController < ApplicationController
  before_action :require_authenticated_user

  def index
    if params[:search]
      @movies = MoviesFacade.new.top_40
    elsif params[:search_terms]
      keywords = params[:search_terms]
      @movies = MoviesFacade.new.movies_from_search(keywords)
    end
  end

  def show
    @movie = MovieFacade.new(params[:id])
  end
end
