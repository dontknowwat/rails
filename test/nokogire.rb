require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.flipkart.com/xolo-q800-x-edition/p/itmdq9mzm24dxhfh?pid=MOBDQ9MZCXHU2TG3&otracker=from-search&srno=t_1&query=Xoloq-800&ref=65b7cdb4-abcb-4f12-b2f3-80ff2ba8acc9"
doc = Nokogiri::HTML(open(url))
title = doc.at_css("h1").text
  price = doc.at_css(".pprice").text
  puts "#{title} - #{price}"
  
