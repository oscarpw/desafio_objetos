class Product
  attr_reader :sizes, :name
  def initialize(name, *sizes)
    @name = name
    @sizes = *sizes
  end

  def average
     product_size = @sizes.map {|size| size.to_i}
     product_size.sum
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
print products_list[0].average
