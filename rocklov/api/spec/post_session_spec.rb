require "httparty"
require_relative "routes/sessions"

describe "POST /sessions" do
  context "login com sucesso" do
    before(:all) do
      @result = Sessions.new.login("virtrudes@cats.com", "lasanha1")
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuario" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end
  context "senha invalida" do
    before(:all) do
      @result = Sessions.new.login("virtrudes@cats.com", "lasar")
    end

    it "valida status code" do
      expect(@result.code).to eql 401
    end

    it "valida id do usuario" do
      expect(@result.parsed_response["error"]).to eql "Unauthorized"
    end
  end
end
