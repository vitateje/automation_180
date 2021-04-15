

5.times do
    puts "Executando times 5X"
end

i = 1

10.times do
    puts "Incrementador +1 #{i}"
    i = i + 1
end

bandas = ["Ramones", "Rage Against the Machine", "Os Travessos", "Anti-Flag", "At The Drive In"]

i = 0
bandas.size.times do
    puts bandas[i]
    i = i + 1
end

bandas.each do |banda|
    puts banda
end