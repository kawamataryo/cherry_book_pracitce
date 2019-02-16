require './spec/spec_helper'
require './lib/deep_freezable'

class BeFrozen
  extend DeepFreezable
  HASH = deep_freeze({hoge: "hoge", fuga: "fuga", esa: "esa"})
  ARRAY = deep_freeze(["hoge", "fuga", "esa"])
end

describe DeepFreezable do
  context 'ハッシュの場合'
  it '凍結されること' do
    expect(BeFrozen::HASH.all? {|k, v| k.frozen? && v.frozen?} && BeFrozen::HASH.frozen?).to be_truthy
  end
  it '値が変わらないこと' do
    expect(BeFrozen::HASH).to eq({hoge: "hoge", fuga: "fuga", esa: "esa"})
  end
  context '配列の場合'
  it '凍結されること' do
    expect(BeFrozen::ARRAY.all?(&:frozen?) && BeFrozen::ARRAY.frozen?).to be_truthy
  end
  it '値が変わらないこと' do
    expect(BeFrozen::ARRAY).to eq(["hoge", "fuga", "esa"])
  end
end
