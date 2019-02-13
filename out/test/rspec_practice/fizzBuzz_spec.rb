require './spec/spec_helper'
require './lib/fizzBuzz'

describe FizzBuzz do
  let(:fizzBuzz) {FizzBuzz.new}

  context '3の倍数の場合' do
    it 'Fizzを返すこと' do
      expect(fizzBuzz.check(3)).to eq 'Fizz'
      expect(fizzBuzz.check(6)).to eq 'Fizz'
      expect(fizzBuzz.check(9)).to eq 'Fizz'
      expect(fizzBuzz.check(12)).to eq 'Fizz'
    end
  end
  context '5の倍数の場合' do
    it 'Buzzを返すこと' do
      expect(fizzBuzz.check(5)).to eq 'Buzz'
      expect(fizzBuzz.check(10)).to eq 'Buzz'
      expect(fizzBuzz.check(20)).to eq 'Buzz'
      expect(fizzBuzz.check(25)).to eq 'Buzz'
    end
  end
  context '15の倍数の場合' do
    it 'FizzBuzzを返すこと' do
      expect(fizzBuzz.check(15)).to eq 'FizzBuzz'
      expect(fizzBuzz.check(30)).to eq 'FizzBuzz'
      expect(fizzBuzz.check(45)).to eq 'FizzBuzz'
      expect(fizzBuzz.check(60)).to eq 'FizzBuzz'
    end
  end
  context 'その他の場合' do
    it '入力値を返すこと' do
      expect(fizzBuzz.check(1)).to eq 1
      expect(fizzBuzz.check(2)).to eq 2
      expect(fizzBuzz.check(4)).to eq 4
      expect(fizzBuzz.check(7)).to eq 7
    end
  end
end
