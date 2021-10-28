class NewsArticle < ApplicationRecord
  require 'get_articles'
  def self.populate_from_api
    require 'pry-byebug';binding.pry
    data = NewsArticleGenerator.get_articles
    data['data'].each do |article|
      tmp_art = NewsArticle.new
      tmp_art.title = article['title']
      tmp_art.description = article['description']
      tmp_art.url = article['url']
      tmp_art.source = article['source']
      tmp_art.save
    end
  end
end
