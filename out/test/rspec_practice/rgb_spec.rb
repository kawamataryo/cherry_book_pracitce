require './spec/spec_helper'
require './lib/rgb'

describe Rgb do
  let(:rgb) {Rgb.new}
  describe '#to_hex' do
    it '10進数を16進数に変換すること' do
      expect(rgb.to_hex(0, 0, 0)).to eq '#000000'
      expect(rgb.to_hex(255, 255, 255)).to eq '#ffffff'
      expect(rgb.to_hex(125, 2, 45)).to eq '#7d022d'
    end
  end
  describe '#to_ints' do
    it '16進数を10進数に変換すること' do
      expect(rgb.to_ints('#000000')).to eq [0, 0, 0]
      expect(rgb.to_ints('#ffffff')).to eq [255, 255, 255]
      expect(rgb.to_ints('#043c78')).to eq [4, 60, 120]
    end
  end
end

