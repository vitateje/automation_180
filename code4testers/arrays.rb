# arrays

bandas = []

bandas = ["Ramones", "Rage Against the Machine", "Os Travessos", "Anti-Flag", "At The Drive In"]

escutando = []

bandas.push("The Smiths")

puts bandas

puts bandas[0]

bandas.delete("Os Travessos")

high_band = bandas.find { |item| item == "At The Drive In" }
# outra forma = high_band = bandas.find { |item| item.include? "At The Drive In" } 
# todo metodo do ruby com "?" retorna boleano

puts "The Band is #{ high_band }"

puts bandas
