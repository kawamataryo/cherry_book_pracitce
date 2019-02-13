require './spec/spec_helper'
require './lib/convert_length'

describe ConvertLength do
  let(:convert_length) {ConvertLength.new}
  context 'mから変換する場合' do
    it 'mへの変換' do
      expect(convert_length.execute(1, :m, :m)).to eq 1
    end
    it 'ftへの変換' do
      expect(convert_length.execute(1, :m, :ft)).to eq 0.305
    end
    it 'inへの変換' do
      expect(convert_length.execute(1, :m, :in)).to eq 0.025
    end
  end
  context 'ftから変換する場合' do
    it 'mへの変換' do
      expect(convert_length.execute(1, :ft, :m)).to eq 3.28
    end
    it 'ftへの変換' do
      expect(convert_length.execute(1, :ft, :ft)).to eq 1
    end
    it 'inへの変換' do
      expect(convert_length.execute(1, :ft, :in)).to eq 0.083
    end
  end
  context 'inから変換する場合' do
    it 'mへの変換' do
      expect(convert_length.execute(1, :in, :m)).to eq 39.37
    end
    it 'ftへの変換' do
      expect(convert_length.execute(1, :in, :ft)).to eq 12.003
    end
    it 'inへの変換' do
      expect(convert_length.execute(1, :in, :in)).to eq 1
    end
  end
end
