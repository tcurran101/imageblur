class Image
    def initialize
        @pixels = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]
            
    end

    def show
        @pixels.each do |r|
            puts r.each { |p| p }.join(" ")
          end
    end
end



image = Image.new
image.show