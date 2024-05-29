require 'rails_helper'
require 'string_calculator_logic' 


RSpec.describe StringCalculatorLogic do
  describe '#add' do
     it 'returns 0 for an empty string' do
       result = StringCalculatorLogic.add("")
       expect(result).to eq(0)
       puts "returns 0 for an empty string"
     end

     it 'returns sum for an string' do
       result = StringCalculatorLogic.add("1")
       expect(result).to eq(1)
       puts "returns 1 for an empty string"
       
     end

     it 'returns sum for an string' do
       result = StringCalculatorLogic.add("0,5")
       expect(result).to eq(5)
     end

     it 'returns exception for negative numbers' do
        result = StringCalculatorLogic.add("1,-2,3,-4,-6")
        expect(result).to eq("negative numbers not allowed -2, -4, -6")
     end

     it 'returns exception for negative numbers' do
       result = StringCalculatorLogic.add('1,-2\n,-3,\n')
       expect(result).to eq("negative numbers not allowed -2, -3")
     end


   end
end