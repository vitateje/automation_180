require "httparty"
require_relative "routes/sessions"

describe "POST /sessions" do
  context "login com sucesso" do
    before(:all) do
      payload = { email: "virtrudes@cats.com", password: "lasanha1" }
      @result = Sessions.new.login(payload)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuario" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  examples = [
    {
      title: "senha incorreta",
      payload: { email: "virtrudes@cats.com", password: "lasar" },
      code: 401,
      error: "Unauthorized",
    },
    {
      title: "usuario não existe",
      payload: { email: "404@cats.com", password: "lasar" },
      code: 401,
      error: "Unauthorized",
    },
    {
      title: "email em branco",
      payload: { email: "", password: "lasar" },
      code: 412,
      error: "required email",
    },
    {
      title: "sem o campo email",
      payload: { password: "lasar" },
      code: 412,
      error: "required email",
    },
    {
      title: "senha em branco",
      payload: { email: "virtrudes@cats.com", password: "" },
      code: 412,
      error: "required password",
    },
    {
      title: "sem o campo senha",
      payload: { email: "virtrudes@cats.com" },
      code: 412,
      error: "required password",
    },
  ]

  examples.each do |e|
    context "#{e[:title]}" do
      before(:all) do
        @result = Sessions.new.login(e[:payload])
      end

      it "valida status code #{e[:code]}" do
        expect(@result.code).to eql e[:code]
      end

      it "valida id do usuario" do
        expect(@result.parsed_response["error"]).to eql e[:error]
      end
    end
  end
end
