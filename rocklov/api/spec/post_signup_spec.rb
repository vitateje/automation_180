require_relative "routes/signup"
require_relative "libs/mongo"

describe "POST /signup" do
  context "novo usuario" do
    before(:all) do
      payload = { name: "Pitty", email: "pitty@bol.com.br", password: "pwd123" }
      MongoDB.new.remove_user(payload[:email])
      @result = Signup.new.create(payload)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuario" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end


  context "usuario ja existe" do

    before(:all) do
      # given that I have a new user
      payload = { name: "Joao", email: "joao@ig.com.br", password: "pwd123" }
      MongoDB.new.remove_user(payload[:email])

      # and the email it is already registered
      Signup.new.create(payload)

      # when I do a request for route /signup
      @result = Signup.new.create(payload)
    end

    it "valida status code 409" do
      # than should return 409
      expect(@result.code).to eql 409
    end

    it "valida retorno mensagem" do
      # than should return 409
      expect(@result.parsed_response["error"]).to eql "Email already exists :("
    end
  end

  #challenge for required fields name, email and password
  
end
#   examples = Helpers::get_fixture("login")

#   examples.each do |e|
#     context "#{e[:title]}" do
#       before(:all) do
#         @result = Sessions.new.login(e[:payload])
#       end

#       it "valida status code #{e[:code]}" do
#         expect(@result.code).to eql e[:code]
#       end

#       it "valida id do usuario" do
#         expect(@result.parsed_response["error"]).to eql e[:error]
#       end
#     end
#   end
# end
