class ArticlesService
    include HTTParty

    base_uri 'articlesrailsapi:3000/api'
    # base_uri 'http://articlesrailsapi:3000/api'
  
    def self.get_authors
      response = get('/authors')
      JSON.parse(response.body)
    end

    def self.get_articles
        response = get('/articles')
        JSON.parse(response.body)
      end
  end
  