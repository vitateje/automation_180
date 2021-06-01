

class EquiposPage
    include Capybara::DSL

    def create(equipo)
        # checkpooint
        page.has_css?("#equipoForm")

        upload(equipo[:thumb]) if equipo[:thumb].length > 0

        find("input[placeholder$=equipamento]").set equipo[:nome]
        select_cat(equipo[:categoria]) if equipo[:categoria].length > 0
        find("input[placeholder^=Valor").set equipo[:preco]
    
        click_button "Cadastrar"
    end

    def select_cat(cat)
        find("#category").find("option", text: cat).select_option
    end

    def upload(file_name)
        thumb =  Dir.pwd + "/features/support/fixtures/images/" + file_name
        # input[placeholder="String"]
        # input[placeholder$=equipamento] pega seletor que tenha equipamento como ultima palavra
        # * contem
        # ^ pega a o que começa com equipamento
        find("#thumbnail input[type=file]", visible:false).set thumb
    end

end