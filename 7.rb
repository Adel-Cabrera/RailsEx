class Product
#  attr_accessor :name, :sizes
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes
  end

  def nuevo_catalogo()
   @sizes.pop()
    File.open('nuevo_catalogo.txt', 'a') do |file|
       file.puts (@name + " " + @sizes.join(', ') + "\n")
     end
  end
end

products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |productos|
  ls = productos.split(', ') #String a Array
  myArray = Product.new(*ls)
  products_list << myArray.nuevo_catalogo()
end
