class Search
  include HTTParty
  base_uri 'api.unsplash.com'

  def self.search_by(query = '')
    get("/search/photos", {
        headers: {
            "Authorization" => 'Client-ID b4c515bd9e6955548ad35672f4dbb177c5b469901adcb73445e3da9dfccaa4be'
        },
        query: query
    })
  end

  def self.show_image(image = '')
    get("/photos/#{image[:id]}", {
        headers: {
            "Authorization" => 'Client-ID b4c515bd9e6955548ad35672f4dbb177c5b469901adcb73445e3da9dfccaa4be'
        }
    })
  end
end