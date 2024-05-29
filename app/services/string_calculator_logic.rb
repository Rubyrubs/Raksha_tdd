class StringCalculatorLogic
  def self.add(numbers_string)
    return 0 if numbers_string.empty?
    numbers = numbers_string.split(',').map(&:to_i) # sum of number in string
    numbers.delete_if {|x| x >= 1000 }

    numbers.sum
  end
  
end
