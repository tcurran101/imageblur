class Shoe
  attr_accessor :size, :color, :type


def initialize (size, color, type)
	@size = size
	@color = color
    @type =  type
end

def output_shoe
	puts "Size #{@size} #{@color} #{@type}"
end

end

shoe = Shoe.new(8, :brown, :boots)
shoe.output_shoe