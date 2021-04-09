# hashes

vitor = { nome: "Vitor", email: "vitateje@outlook.com", legal: true }

victoria = { nome: "Victória", email: "victoriaghenrique@outlook.com", legal: false }

virtrudes = { nome: "Virtrudes", email: "virtrudes@outlook.com", legal: true}

# puts vitor.class

# puts vitor[:email]

# puts vitor[:nome]

apto_101 = [ vitor, victoria, virtrudes]

puts apto_101[0][:nome]

puts apto_101[1][:legal]