require 'httparty'
class UrlApi

API_URL = 'https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?locale=en_US&api_key=RGAPI-e088a7b1-4e20-44b7-90ab-4465e31200a2'

 def all_champs
   response = HTTParty.get(API_URL)
   # TODO more error checking (500 error, etc)
   json = JSON.parse(response.body)
   return json['data']
 end
 def find_champ(id)
   url2="https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion/#{id}?locale=en_US&champData=passive,spells&api_key=RGAPI-e088a7b1-4e20-44b7-90ab-4465e31200a2"
   response=HTTParty.get(url2)
   json=JSON.parse(response.body)
   return json
 end
 def free_champs
   url3="https://na.api.pvp.net/api/lol/na/v1.2/champion?freeToPlay=true&api_key=RGAPI-e088a7b1-4e20-44b7-90ab-4465e31200a2"
   response=HTTParty.get(url3)
   json=JSON.parse(response.body)
   return json["champions"]
 end
 def get_id(name)
   url4="https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/#{name.gsub(" ","")}?api_key=RGAPI-e088a7b1-4e20-44b7-90ab-4465e31200a2"
   response=HTTParty.get(url4)
   json=JSON.parse(response.body)
   y=response.code.to_i
   return -1 if y!=200
   return json["#{name.gsub(" ","")}"]["id"]
 end
 def top_champs(id)
   url5="https://na.api.pvp.net/championmastery/location/NA1/player/#{id}/topchampions?count=3&api_key=RGAPI-e088a7b1-4e20-44b7-90ab-4465e31200a2"
   response=HTTParty.get(url5)
   json=JSON.parse(response.body)
   return json
 end
end
