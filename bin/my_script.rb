require 'addressable/uri'
require 'rest-client'

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { username: "Bonzo" } }
  )
end

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/2.json'
  ).to_s

  puts RestClient.patch(
    url,
    { user: { name: "Beth" } }
  )
end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3.json'
  ).to_s

  puts RestClient.delete(url)
end
# destroy_user
# update_user
create_user
#
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/3.json',
# ).to_s

# puts RestClient.get(url)
