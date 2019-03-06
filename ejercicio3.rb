#Ejercicio3: Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.

# Crear una clase Car que herede de Vehicle
# El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
# contador de instancias de Car.
# Crear un método de clase en Car que devuelva la cantidad de instancias.
# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
# Instanciar 10 Cars.
# Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.

class Vehicle
def initialize(model, year)
@model = model
@year = year
@start = false
end
def engine_start
@start = true
end
end

class Car < Vehicle
  @@contador_instancias = 0
  def initialize(model, year)
    super
    @@contador_instancias += 1
  end
  def self.cantidad_de_instancias
    @@contador_instancias
  end
  def engine_start
    super
    puts 'El motor se ha encendido'
  end
end

10.times do |i|
  year = 2000 + i
  model = "modelo_#{i}"
  Car.new(model, year)
  puts "Se creó el auto modelo #{model} del año #{year}"
end


puts "Se crearon #{Car.cantidad_de_instancias} instancias"