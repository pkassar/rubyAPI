require 'rest-client'
require 'json'
require_relative 'ApiHandler'

class Users

attr_reader :api

  def initialize(api = ApiHandler.new)
    @api = api
  end

  def lookup_user_return_id(email)
    @api.all_users['data'].select{ |user| user['email'] == email }.first['id']
  end

  def reverse_lookup(id)
    @api.all_users['data'].select{ |user| user['id'] == id }.first['email']
  end
end
