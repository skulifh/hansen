# frozen_string_literal: true

RSpec.describe Hansen::NumberHelpers do
  number_helpers = Hansen::NumberHelpers

  context "decimal_and_separator" do
    it "should return a whole number in a readable way" do
      expect(number_helpers.decimal_and_separator(123_123_123)).to eq("123.123.123")
    end

    it "should return a large whole number in a readable way" do
      test_number = 2_903_482_382_342_342_342_342_342_343_923_748_927_349
      expected_results = "2.903.482.382.342.342.342.342.342.343.923.748.927.349"
      expect(number_helpers.decimal_and_separator(test_number)).to eq(expected_results)
    end

    it "should return a decimal numbder in a readable way" do
      test_number = 234_234.32324
      expected_results = "234.234,32324"
      expect(number_helpers.decimal_and_separator(test_number)).to eq(expected_results)
    end

    it "should return TypeError when a string is passed in as an argument" do
      expect { number_helpers.decimal_and_separator("asdf") }.to raise_error(TypeError)
    end
  end
end
