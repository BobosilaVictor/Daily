require 'location'
class WelcomeController < ApplicationController
    def show
      location = get_user_location
      @user_location = location
    end

    def news
      if NewsArticle.first.nil?
        NewsArticle.populate_from_api
      end
      @news = NewsArticle.all
    end

    def weather
    end

    def tasks
    end

    private

    def get_user_location
      ip_address = request.remote_ip
      Location.get_location ip_address
    end
end