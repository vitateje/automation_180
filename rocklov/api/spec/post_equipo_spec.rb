require_relative "routes/equipos"

describe "POST /equipos" do

    before(:all) do

        payload = { email: "pitty@bol.com.br", password: "pwd123" }
        result = Sessions.new.login(payload)
        @user_id = result.parsed_response["_id"]
    end



    context "novo equipo" do

        before(:all) do

            thumbnail = File.open(File.join(Dir.pwd, "spec/fixtures/images", "kramer.jpg"))

            payload = { thumbnail: thumbnail,
                        name: "Kramer Seinfeld", 
                        category: "Cordas", 
                        price: 12
                     }

            @result = Equipos.new.create(payload, @user_id)
            puts @result
        end
  
  
        it "deve retornar 200" do
            expect(@result.code).to eql 200
        end

    end

end