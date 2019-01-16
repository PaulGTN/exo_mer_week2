require 'twitter'
require 'pry'
require 'dotenv'

Dotenv.load

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_API_KEY"]
    config.consumer_secret     = ENV["TWITTER_API_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

client.search("#bonjour_monde").take(20).each do |tweet|
twitter_name = tweet.user.screen_name
client.follow(twitter_name)
end