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

if (idade >= 18)
    puts nome + " Get your Car Brow"
elsif (idade >= 7)
    puts nome + " Get de Bike Guy"
else
    puts "Nothing to Declare ," + nome
end
