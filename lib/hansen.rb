# frozen_string_literal: true
require 'byebug'
require_relative "hansen/version"

module Hansen
  class Error < StandardError; end
  
  class NumberHelpers
    def self.decimal_and_separator(number)
      unless [Integer, Float].include?(number.class)
        raise TypeError.new "Only Integer and Float types are allowed as an input"
      end

      number_array = number.to_s.split(".")
      decimals = number_array.count == 2 ? ",#{number_array[1]}" : ""
      units = number_array[0]

      num_groups = units.chars.to_a.reverse.each_slice(3)
      return num_groups.map(&:join).join('.').reverse + decimals
    end
  end
end
