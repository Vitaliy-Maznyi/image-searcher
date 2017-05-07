class Search
  include HTTParty
  base_uri 'api.unsplash.com'

  def self.search_by(query = '', page = '1')
    get('/search/photos', headers: {
      'Authorization' => 'Client-ID ef9d6f296a30daeebb560a1c001b2d72d43bb04b9ecda9a3789f8d1aa0b6fce0'
    },
                          query: query,
                          page: page)
  end

  def self.show_image(image = '')
    get("/photos/#{image[:id]}", headers: {
      'Authorization' => 'Client-ID ef9d6f296a30daeebb560a1c001b2d72d43bb04b9ecda9a3789f8d1aa0b6fce0'
    })
  end
end
