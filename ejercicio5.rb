#Ejercicio5: Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados correspondientes.

# Se pide:
# Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir
# un string con las medidas de los lados.
# Crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el
# perímetro.
# Crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando los métodos
# implementados.

class Rectangulo
  attr_reader :area, :perimetro
  attr_writer :largo, :ancho
def initialize(largo, ancho)
@largo = largo
@ancho = ancho
end
def lados
  puts "El rectangulo mide: #{@largo} de largo y #{@ancho} de ancho"
end
def perimetro
  @perimetro = (2*@largo)+(2*@ancho)
end
def area
  @area = @largo * @ancho
end
end

class Cuadrado
  attr_reader :area, :perimetro
  attr_writer :lado
def initialize(lado)
@lado = lado
end
def lados
  puts "Cada lado del cuadrado mide: #{@lado} "
end
def perimetro
  @perimetro = 4*@lado
end
def area
  @area = @lado * @lado
end
end

puts 'ingrese largo del rectangulo en mm'
largo = gets.chomp.to_i
puts 'ingrese ancho del rectangulo en mm'
ancho = gets.chomp.to_i

puts 'ingrese lado del cuadrado en mm'
lado = gets.chomp.to_i

rectangulo_uno = Rectangulo.new(largo, ancho)
cuadrado_uno = Cuadrado.new (lado)

puts "El perimetro del rectangulo es: #{rectangulo_uno.perimetro} mm"
puts "El área del rectangulo es: #{rectangulo_uno.area} mm"

puts "El perimetro del cuadrado es: #{cuadrado_uno.perimetro} mm"
puts "El área del cuadrado es: #{cuadrado_uno.area} mm"
