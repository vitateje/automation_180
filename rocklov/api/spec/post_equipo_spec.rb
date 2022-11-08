describe "POST /equipos" do


    context "novo equipo" do

        before(:all) do
            payload = { thumbnail: "kramer.jpg",
                        name: "Kramer Seinfeld", 
                        category: "Cordas", 
                        price: 12,
                     }

            @result = Signup.new.create(payload)
        end
  
  
        it "deve retornar 200" do
            expect(@result.parsed_response["_id"].length).to eql 24
        end

    end

end