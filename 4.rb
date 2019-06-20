class Dog
  attr_reader :name
  def initialize(opts ={})
    @name = opts[:nombre]
  end

  def ladrar
     puts "#{@name} está ladrando!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

dog1 = Dog.new(propiedades)

puts dog1.ladrar
