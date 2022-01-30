# frozen_string_literal: true

require "byebug"

RSpec.describe Hansen do
  it "has a version number" do
    expect(Hansen::VERSION).not_to be nil
  end
end
