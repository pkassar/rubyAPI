require 'rest-client'
require 'json'

url = 'https://driftrock-dev-test-2.herokuapp.com/users?per_page=50000000&page=1'
response = RestClient.get(url)
data = JSON.parse(response)

p data['data'].map { |user| user['id']}


# mock api how to
# paginated
