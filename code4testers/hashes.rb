# hashes

vitor = { nome: "Vitor", email: "vitox@outlook.com", legal: true }

victoria = { nome: "Victória", email: "vice@outlook.com", legal: false }

virtrudes = { nome: "Virtrudes", email: "virtrudes@outlook.com", legal: true}

# puts vitor.class

# puts vitor[:email]

# puts vitor[:nome]

apto_101 = [ vitor, victoria, virtrudes]

puts apto_101[0][:nome]

puts apto_101[1][:legal]