class Dog

  def initialize(args)
    @args = args
  end

  def ladrar()
    puts "#{@args[:nombre]} está ladrando!"

  end


end


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

dog = Dog.new(propiedades)

dog.ladrar()
