class Ticked<Transport
    attr_reader :status, :distance, :price
   def initialize
      @status
   end

  def calculate_price(transport,start,finish)
    if transport.speed < 10
      "Besplatno"
    else
      ((Math.sqrt(((finish.x - start.x)**2) + ((finish.y - start.y)**2))) * transport.speed).to_i.to_s + " $" 
    end
  end  
  
end