# metodos.rb

# padrão ruby para variáveis e métodos: snake_case

# def imprime_nome(nome)
#     puts "@vitateje", nome
# end

# imprime_nome("teste")

def pega_soma(valor1, valor2)
    resultado = valor1 + valor2
    return resultado
end

# o ruby sempre retorna a ultima instrução de codigo
# def pega_soma1(valor1, valor2)
#     resultado = valor1 + valor2
#     resultado
# end

total = pega_soma(1,5)
puts total