=begin
Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
- Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
- Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
- El retorno de los métodos debe devolver nil.
=end


def two_string(s1, s2)
  File.open('index.html', 'w') { |file|
    file.puts "<p>#{s1}</p>"
    file.puts "<p>#{s2}</p>"
  }
end

s1 = "Lorem ipsum dolor sit amet, consectetur "
s2 = "Lorem ipsum dolor sit amet, consectetur "
s3 = []
s4 = "<head>
        <style>
          p{
            background-color: lightblue;
           }
        </style>
      </head>"
two_string(s1, s2)


def tres_string(s1, s2, s3)
  File.open('index.html', 'w') do |file|
    file.puts "<p>#{s1}</p>"
    file.puts "<p>#{s2}</p>"
    if ! s3.empty?
      file.puts "<ol>"
    s3.each{|x|file.puts "<li>#{x}</li>"}
    file.puts "</ol>"
    end

  end
end
tres_string(s1, s2, s3)

def cuatro(s1, s2, s3, s4)
  File.open('index.html', 'w') do |file|
    file.puts "<p>#{s1}</p>"
    file.puts "<p>#{s2}</p>"
    file.puts "<ol>"
    if ! s3.empty?
    s3.each{|x|file.puts "<li>#{x}</li>"}
    end
    file.puts "</ol>"
    file.puts s4
  end
end
cuatro(s1, s2, s3, s4)
puts 
