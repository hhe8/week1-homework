# Require Ruby libraries
require 'open-uri'
require 'json'

origin = "5555 South Ellis Avenue, Chicago, Illinois, 60637"
destination = "United Center, Chicago, Illinois"

# Convert to an HTTP-compatible querystring parameters
origin = URI.escape(origin)
destination = URI.escape(destination)

# Send an HTTP request to the Google Directions API
url = "http://maps.googleapis.com/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false"
puts url
json_data = open(url).read

# Parse the response string into a Ruby data structure
# (You will need to figure out what kind of structure it is)
data = JSON.parse(json_data)
# following is needed to 

#puts data['status']
#puts "\n"
#puts data['routes'][0].keys
#for key in data['routes'][0].keys
#    puts "#{key}: #{data['routes'][0][key]}"
#    puts "\n"
#end
#found that information needed is in legs
#

#for key in data['routes'][0]['legs'][0].keys
#    puts "#{key}: #{data['routes'][0]['legs'][0][key]}"
#    puts "\n"
#end

# 1. TO DO:
# Replace the following 0 with an expression that will retrieve the total travel time
total_time = data['routes'][0]['legs'][0]['duration']['text']

# Output the total drive time to the screen
puts "Total travel time driving: #{total_time}"

# 2. TO DO:
# Replace the following 0 with an expression that will retrieve the total distance
total_distance = data['routes'][0]['legs'][0]['distance']['text']

# Output the total distance to the screen
puts "Total distance traveled: #{total_distance}"
