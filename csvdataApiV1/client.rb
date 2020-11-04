require 'faraday'


#test for create user
# client = Faraday.new(url: 'http://localhost:3000') do |config|
#   config.adapter  Faraday.default_adapter
# end
#
# response = client.post do |req|
#   req.url '/api/v1/users'
#   req.headers['Content-Type'] = 'application/json'
#   req.body = '{ "user": {"name": "Long"} }'
# end
#
# require 'oj'
#
# # client here...
#
# puts Oj.load(response.body)
# puts response.status
#test for create user


# Create client
client = Faraday.new(url: 'http://localhost:3000') do |config|
  config.adapter  Faraday.default_adapter
  config.token_auth('15e9d05a215b701a778c6518845636db')
end



# test for create
# response = client.post do |req|
#   req.url '/api/v1/countries'
#   req.headers['Content-Type'] = 'application/json'
#   req.body = '{"name": "King", "Cid": "99999999", "longitude": 566500.3, "latitude": 2342334.4}'
# end
#
#

# test for delete
response = client.delete do |req|
  req.url '/api/v1/countries/1'
  req.headers['Content-Type'] = 'application/json'
end