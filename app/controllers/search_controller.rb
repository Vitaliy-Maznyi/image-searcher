class SearchController < ApplicationController
  def index
    if params[:search] || params[:page]
      query = Search.search_by(query: params[:search][:query], page: params[:page])
      respond_to do |format|
        format.html do
          @photos = JSON.parse(query.to_json, object_class: OpenStruct)
          @photos.search = params[:search][:query] # save search query throw pagination
        end
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
      format.json { render json: query }
    end
  end
end
