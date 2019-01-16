require 'twitter'
  require 'dotenv'# Appelle la gem Dotenv

Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV
 
 # quelques lignes qui appellent les clés d'API de ton fichier .env
 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_API_KEY"]
   config.consumer_secret     = ENV["TWITTER_API_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 end

 # ligne qui permet de tweeter sur ton compte
 client.update('Mon premier tweet en Ruby !!!!')
 
=begin
 def login_twitter(client)
	login = client
  !login?.nil
  puts client.update
end
=end
