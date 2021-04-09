# ops.rb

# convertendo integer to float

def divide(n1, n2)
    resultado = (n1.to_f / n2.to_f).round(2)
    puts resultado
    puts resultado.class
end

divide(10, 3)

# Operadores de Comparação

def maior_que(v1, v2)
    puts v1 > v2
end

# Retorna true, porque 10 é maior que 5
maior_que(10, 5)

maior_que(5, 10)