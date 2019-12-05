class Image
  def initialize
    @picture = [[0,0,0,0,0,0], [0,0,0,0,0,0], [0,0,0,1,0,0], [0,0,0,0,0,0], [0,0,0,0,0,0], [0,0,0,0,0,0]]
  end
  
  def show_orig
    @picture.each do |r|
      puts r.each { |p| p }.join(" ")
    end
  end
  
  def get_ones
    ones = []
    @picture.each_with_index do |row, row_num|
      row.each_with_index do |item, col_num|
        if item == 1
        ones << [row_num, col_num]
        end
      end
    end
   ones
  end

#The Manhattan distance is the simple sum of the horizontal and vertical components, whereas the diagonal distance might be computed by applying the Pythagorean theorem.
def blur
  ones = get_ones
  @picture.each_with_index do |row, row_num|
    row.each_with_index do |item, col_num|
      ones.each do |found_row_num, found_col_num|
        if row_num == found_row_num && col_num == found_col_num
          @picture[row_num - 1][col_num] = 1 unless row_num == 0
          @picture[row_num + 1][col_num] = 1 unless row_num >= 5
          @picture[row_num][col_num - 1] = 1 unless row_num == 0
          @picture[row_num][col_num + 1] = 1 unless col_num >= 5
        end
      end
    end
  end
end

  def blur_m(distance) 
    distance.times do
      get_ones
        blur
    end
    m_image
  end
  
  def m_image
    @picture.each do |row|
        row.each do |pixel|
          print pixel
        end   
        puts
    end
  end

  def output_image
    @picture.each do |pixel|
      puts pixel.join
    end
  end
  
  
end
  
image = Image.new
image.show_orig

 
puts "What blur distance do you want?"
num = gets.chomp
distance = num.to_i

image.blur_m(distance)