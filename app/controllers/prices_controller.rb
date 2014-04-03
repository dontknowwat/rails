class PricesController < ApplicationController
  #before_action :set_price, only: [:show, :edit, :update, :destroy]

  # GET /prices
  # GET /prices.json
  def index
   require 'nokogiri'
  require 'open-uri'

  url = "http://www.flipkart.com/xolo-q800-x-edition/p/itmdq9mzm24dxhfh?pid=MOBDQ9MZCXHU2TG3&otracker=from-search&srno=t_1&query=Xoloq-800&ref=65b7cdb4-abcb-4f12-b2f3-80ff2ba8acc9"
  doc = Nokogiri::HTML(open(url))
  @title = doc.at_css("h1").text
  @prices = doc.at_css(".pprice").text

  
 
end

    def show 
    
  require 'nokogiri'
  require 'open-uri'
  @search = params[:search]
  url = "http://www.flipkart.com/search?q=#{@search}&as=off&as-show=off&otracker=start"
  doc = Nokogiri::HTML(open(url))
  @title = doc.at_css("title").text
  @prices = doc.at_css(".pu-final").text
  

  end


 def search

  require 'nokogiri'
  require 'open-uri'

  url = "http://www.flipkart.com/search?q= params[:search]&as=off&as-show=off&otracker=start"
  doc = Nokogiri::HTML(open(url))
  @title = doc.at_css("h1").text
  @prices = doc.at_css(".pprice").text



  end

end
       
