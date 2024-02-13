class StringCalculatorLogic
  def self.add(numbers_string)
    return 0 if numbers_string.empty?
    numbers = numbers_string.split(',').map(&:to_i)

    if numbers_string.include?("-")
      num = numbers_string.split(',').map(&:to_i).select { |num| num < 0 }.join(", ")
      return "negative numbers not allowed #{num}"
    end

    numbers = numbers_string.gsub('\n', ",").split(',').map(&:to_i) if numbers_string.include?('\n')

    numbers.sum
  end
end
