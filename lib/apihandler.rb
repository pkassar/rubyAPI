require 'rest-client'
require 'json'


class ApiHandler

  def all_purchases
    url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=50000&page=1'
    response = RestClient.get(url)
    JSON.parse(response)
  end
  def all_users
    url = 'https://driftrock-dev-test-2.herokuapp.com/users?per_page=50000&page=1'
    response = RestClient.get(url)
    JSON.parse(response)
  end
end
