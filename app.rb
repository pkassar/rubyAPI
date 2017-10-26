require 'rest-client'
require 'json'

url = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=500000&page=1'
response = RestClient.get(url)
@data = JSON.parse(response)


def user_transactions(id)
  @data['data'].select{ |user| user['user_id'] == id }
end

def list_prices(id)
  user_transactions(id).map{ |user| user['spend'].to_f }
end

def total_spent(id)
  p list_prices(id).inject(0) {|sum, i| sum + i}
end

def average(id)
  p total_spent(id)/list_prices(id).count
end

# def most_loyal
#   @data['data'].count { |user| user['spend'] == "75.21" }
# end

# def test
#   @data['data'].each do |user|
#     puts list_prices(|user|).count
#   end
# end

def counting_transactions_by(arg)
  @data['data'].each_with_object(Hash.new(0)) { |h1, h2| h2[h1[arg]] += 1 }
end



@purchases_by_customer = @data['data'].each_with_object(Hash.new(0)) { |h1, h2| h2[h1["user_id"]] += 1 }



def most_loyal
  p @purchases_by_customer.max_by{|k,v| v}
end


def most_sold
  p counting_transactions_by("item").max_by{ |k,v| v}.first
end
# most_loyal
most_sold
# p @data['data']

# ary = [1,2,3,4,5]
# ary.each do |i|
#    puts i
# end
