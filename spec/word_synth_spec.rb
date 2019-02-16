require './spec/spec_helper'
require './lib/word_synth'
require './lib/effects'

describe WordSynth do
  let(:word_synth) {WordSynth.new}

  describe '#play' do
    it '入力した値が返ること' do
      expect(word_synth.play('hoge')).to eq 'hoge'
    end
    context 'add reverse' do
      it '反転した値が返ること' do
        word_synth.add_effect(Effects.reverse)
        expect(word_synth.play('hoge fuga')).to eq 'egoh aguf'
      end
    end
    context 'add loud' do
      it '大文字になり指定回数分!がつくこと' do
        word_synth.add_effect(Effects.loud(3))
        expect(word_synth.play('hoge fuga')).to eq 'HOGE!!! FUGA!!!'
      end
    end
    context 'add echo' do
      it '指定回数分文字が繰り返されること' do
        word_synth.add_effect(Effects.echo(3))
        expect(word_synth.play('hoge fuga')).to eq 'hhhooogggeee fffuuugggaaa'
      end
    end
    context 'add all' do
      it '全てを混ぜた場合でも動作すること' do
        word_synth.add_effect(Effects.echo(3))
        word_synth.add_effect(Effects.loud(3))
        word_synth.add_effect(Effects.reverse)
        expect(word_synth.play('hoge fuga')).to eq '!!!EEEGGGOOOHHH !!!AAAGGGUUUFFF'
      end
    end
  end
end
