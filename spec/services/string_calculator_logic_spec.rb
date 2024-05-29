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

   end
end