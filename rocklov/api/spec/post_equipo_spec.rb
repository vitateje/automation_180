describe "POST /equipos" do


    context "novo equipo" do

        before(:all) do
            payload = { name: "Pitty", email: "pitty@bol.com.br", password: "pwd123" }

            @result = Signup.new.create(payload)
        end
  
  
        it "deve retornar 200" do
            expect(@result.parsed_response["_id"].length).to eql 24
        end

    end
    
end