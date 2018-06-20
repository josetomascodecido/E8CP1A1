=begin
Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
- Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
- Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
- El retorno de los métodos debe devolver nil.
=end


def two_string(s1, s2)
  File.open('index.html', 'w') { |file|
    file.puts "<p>#{s1}"
    file.puts "<p>#{s2}"
  }
end
s1 = "Lorem ipsum dolor sit amet, consectetur "
s2 = "Lorem ipsum dolor sit amet, consectetur "
s3 = ["hola", "esta", "es", "mi", "prueba"]


two_string(s1, s2)

def tres_string(s1, s2, s3)
  File.open('index.html', 'w') { |file|
    file.puts "<p>#{s1}"
    file.puts "<p>#{s2}"
    s3.each{|x|file.puts "<ol>#{x}</ol>"}
  }
end
tres_string(s1, s2, s3)
