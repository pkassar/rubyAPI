require 'purchases'
require_relative "MockApi"

describe Purchases do
  subject(:purchases){ described_class.new(MockApi.new) }
  describe "user_transactions" do
    it 'returns the transactions done when given a user_id' do
      expect(purchases.total_spend('1')).to eq 68.99
    end
  end
end
