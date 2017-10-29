require 'rest-client'
require 'json'

url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=50000&page=1'
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

def average_spend(id)
  p total_spend(id)/list_prices(id).count
end

def counting_transactions_by(arg)
  @data['data'].each_with_object(Hash.new(0)) { |h1, h2| h2[h1[arg]] += 1 }
end

def most_loyal
  p counting_transactions_by("user_id").max_by{ |k,v| v}.first
end

def most_sold
  p counting_transactions_by("item").max_by{ |k,v| v}.first
end

p most_sold
p most_loyal
