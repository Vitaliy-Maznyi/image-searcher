class SearchController < ApplicationController
  def index
    if params[:search]
      query = Search.search_by(query: params[:search][:query])
      respond_to do |format|
        format.html { @photos = JSON.parse(query['results'].to_json, object_class: OpenStruct) }
        format.json { render json: query }
      end
    else
      @photos = {}
    end
  end

  def show
    query = Search.show_image(id: params[:id])
    respond_to do |format|
      format.html { @photo = JSON.parse(query.to_json, object_class: OpenStruct) }
      format.json { render json: @query }
    end
  end
end
