require "json"
class MockApi
  def all_purchases
    file = File.read "spec/fakepurchasesAPI.json"
    data = JSON.parse(file)
  end
end
