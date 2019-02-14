require './spec/spec_helper'
require './lib/hash'

describe Hash do
  let(:hash) {Hash.new}
  before_text = <<TEXT
  {
    :name => 'alice'
    :age=>20
    :gender  =>  :female
  }
TEXT
  convert_text = <<TEXT
  {
    name: 'alice'
    age: 20
    gender: :female
  }
TEXT

  it 'シンボルを使った記法に変換すること' do
    expect(hash.convert_syntax(before_text)).to eq convert_text
  end
end
