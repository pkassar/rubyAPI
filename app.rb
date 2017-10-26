require 'rest-client'
require 'json'

url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=5&page=1'
response = RestClient.get(url)
@data = JSON.parse(response)


def user_transactions(id)
  @data['data'].select{ |user| user['user_id'] == id }
end

def list_prices(id)
  user_transactions(id).map{ |user| user['spend'].to_f }
end

def total_spend(id)
  p list_prices(id).inject(0) {|sum, i| sum + i}
end

def average(id)
  p total_spend(id)/list_prices(id).count
end

# total_spend('9PLH-PC2J-7620-L6ZP')
# average('9PLH-PC2J-7620-L6ZP')

def most_loyal
  p @data['data'].max_by { |user| user['spend'] }
end


most_loyal
