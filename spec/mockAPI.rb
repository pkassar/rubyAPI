require "json"
class MockApi
  def all_purchases
    file = File.read "spec/fakepurchasesAPI.json"
    data = JSON.parse(file)
  end
  def all_users
    file = File.read "spec/fakeusersAPI.json"
    data = JSON.parse(file)
  end
end
