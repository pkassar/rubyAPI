require 'rest-client'
require 'json'

  url = 'https://driftrock-dev-test-2.herokuapp.com/users?per_page=2&page=1'
  response = RestClient.get(url)
  @user = JSON.parse(response)

  def look_up_user(id)
    @user['data'].select{ |user| user['id'] == id }
  end

  def exctract_email(id)
    p look_up_user(id).map{ |user| user['email']}
  end

exctract_email("KZHR-1H35-2IH8-JXYN")
