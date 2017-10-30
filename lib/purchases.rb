require 'rest-client'
require 'json'
require_relative 'ApiHandler'


class Purchases

  attr_reader :api

  def initialize(api = ApiHandler.new)
    @api = api
  end

  def user_transactions(id)
    api.all_purchases['data'].select{ |user| user['user_id'] == id }
  end

  def list_prices(id)
    user_transactions(id).map{ |user| user['spend'].to_f }
  end

  def total_spend(id)
    list_prices(id).inject(0) {|sum, i| sum + i}.round(2)
  end

  def average_spend(id)
    total_spend(id)/list_prices(id).count
  end

  def counting_transactions_by(arg)
    api.all_purchases['data'].each_with_object(Hash.new(0)) { |h1, h2| h2[h1[arg]] += 1 }
  end

  def most_loyal
    counting_transactions_by("user_id").max_by{ |k,v| v}.first
  end

  def most_sold
    counting_transactions_by("item").max_by{ |k,v| v}.first
  end
end
