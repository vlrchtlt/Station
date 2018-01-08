require "sinatra"
require "http"
require 'json'

get '/'  do
  address = URI.escape(params["address"])

  respons = HTTP.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{address}").body.to_s
  respons = JSON.parse(respons)
  results = respons[results].inspect
  #lgn = respons[geometry][location][lgn]
  #p lat
  #blabla

end
