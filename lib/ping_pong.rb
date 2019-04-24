class Fixnum 
  def ping_pong
    counter = 1
    count_up_array = []

    while (counter <= self)
      count_up_array.push(counter)
      counter +=1
    end
    
    count_up_array.each_with_index() do |number, index|
      if (number.%(5).eql?(0)) & (number.%(3).eql?(0))
        count_up_array[index] = 'ping-pong'
      elsif number.%(5).eql?(0)
        count_up_array[index] = 'pong'
      elsif number.%(3).eql?(0)
          count_up_array[index] = 'ping'
      end
    end

    count_up_array
  end
end