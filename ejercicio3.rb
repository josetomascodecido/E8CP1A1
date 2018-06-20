=begin
# Ejercicio 3: Contando palabras
- Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. El método debe devolver este valor.
- Crear un método similar para que además reciba -como argumento- un *string*. En este caso el método debe contar únicamente las apariciones de ese *string* en el archivo.
=end
def contando
  file = File.open('peliculas.txt','r')
  movies = file.readlines.join.split(' ')
  file.close
  movies.length
end
print contando
def otro(str)
  file = File.open('peliculas.txt','r')
  movies = file.readlines.join.downcase.split(str.downcase).length-1
  file.close
  movies
end
puts " "
print otro("guerra")
