
class Veiculo
    attr_accessor :nome, :cor, :marca

    # método construtor que é executado automaticamente quando se cria uma instância da classe

    def initialize(nome)
        @nome = nome
    end

    def define_cor(cor)
        @cor = cor
    end
end

class Carro < Veiculo

    def ligar
        puts "O #{@nome} está pronto"
    end
end

chevette = Carro.new("Cheveta")

chevette.nome = "Chevetex"
chevette.cor = "Azul"

puts chevette.ligar
puts chevette.cor
