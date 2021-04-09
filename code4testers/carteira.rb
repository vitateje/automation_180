# nome = "Vitor"
# idade = 6

# if (idade >= 18)
#     puts nome + " Get your Car Brow"
# elsif (idade >= 7)
#     puts nome + " Get de Bike Guy"
# else
#     puts "Nothing to Declare"
# end

# gets & chomp

puts "Digite Seu Nome"
nome = gets.chomp
puts "Informe a sua Idade"
idade = gets.chomp.to_i

puts idade.class

# interpolation

if (idade >= 18)
    puts "Get your Car Brow #{nome}"
elsif (idade < 7)
    puts "Vai de Motoquinha #{nome} que tem #{idade} anos."
else
    puts "Nothing to Declare ," + nome
end

