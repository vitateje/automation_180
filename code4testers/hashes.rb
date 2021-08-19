# hashes

vitor = { nome: "Vitor", email: "vitor@outlook.com", legal: true }

vic = { nome: "Vice", email: "vic@outlook.com", legal: false }

virtrudes = { nome: "Virtrudes", email: "virtrudes@outlook.com", legal: true}

# puts vitor.class

# puts vitor[:email]

# puts vitor[:nome]

apto_101 = [ vitor, vic, virtrudes]

puts apto_101[0][:nome]

puts apto_101[1][:legal]
