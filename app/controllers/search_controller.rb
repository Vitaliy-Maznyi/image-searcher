class SearchController < ApplicationController
  def index
    @query = Search.new
  end

  def new
    @query = Search.search_by(query: params[:search][:query])
    respond_to do |format|
      format.html { @result = JSON.parse(@query.to_json, object_class: OpenStruct)}
      format.json { render json: @query }
    end
  end

  def show
  end

end
