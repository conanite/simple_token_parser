require 'simple_token_parser'
require 'spec_helper'

describe SimpleTokenParser do

  before {
    SimpleTokenParser.install String
  }

  it "behaves mostly like String#split" do
    str = "this and that"
    expected = %w{ this and that }
    expect(str.basic_tokens).to eq expected
  end

  it "respects quoted segments of string" do
    str = %q{ the band played "waltzing mathilda" again }
    expected = ["the", "band", "played", "waltzing mathilda", "again"]
    expect(str.basic_tokens).to eq expected
  end
end
