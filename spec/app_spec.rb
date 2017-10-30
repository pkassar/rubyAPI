require 'app'
require_relative "MockApi"

describe App do
  let(:mockApi) { MockApi.new }
  let(:users) { Users.new(mockApi) }
  let(:purchases) { Purchases.new(mockApi) }

  subject(:app){ described_class.new(users,purchases) }
  describe "total_spend" do
    it 'returns the transactions done when given an email' do
      expect(app.total_spend('homenick@cmail.com')).to eq 123.49
    end
  end
  describe "average_spend" do
    it 'returns the average spent from a used_id' do
      expect(app.total_spend('alin@bmail.com')).to eq 190.92
    end
  end
  describe "most_loyal" do
    it 'returns the email of most loyal customer' do
      expect(app.most_loyal).to eq "homenick@cmail.com"
    end
  end
  describe "most_sold" do
    it 'returns the most sold item' do
      expect(app.most_sold).to eq "pants"
    end
  end
end
