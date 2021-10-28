module NewsArticleGenerator
    require 'net/http'
    require 'json'
    require 'uri'
  
    def get_articles
      article = Net::HTTP.get(URI("http://api.mediastack.com/v1/news?access_key=3530dd553a3bfcad99adbda1a37c498f&countries=us,au"))
  
      JSON.parse(article)
    end

  
    module_function :get_articles
  end