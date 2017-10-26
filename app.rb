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

# def most_loyal
#   @data['data'].count { |user| user['spend'] == "75.21" }
# end

# def test
#   @data['data'].each do |user|
#     puts list_prices(|user|).count
#   end
# end

# p @data['data'].each_with_object(Hash.new(0)) { |h1, h2| h2[h1[:user_id]] += 1 }

p @data['data']

# ary = [1,2,3,4,5]
# ary.each do |i|
#    puts i
# end
