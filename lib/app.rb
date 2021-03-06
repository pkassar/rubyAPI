require_relative 'users.rb'
require_relative 'purchases.rb'


class App
  attr_reader :users, :purchases

  def initialize(users = Users.new, purchases = Purchases.new)
    @purchases = purchases
    @users = users
  end

  def total_spend(email)
    id = @users.lookup_user_return_id(email)
    @purchases.total_spend(id)
  end

  def average_spend(email)
    id = @users.lookup_user_return_id(email)
    @purchases.average_spend(id)
  end

  def most_loyal
    id = @purchases.most_loyal
    @users.reverse_lookup(id)
  end

  def most_sold
    @purchases.most_sold
  end
end
