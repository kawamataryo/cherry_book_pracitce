require './spec/spec_helper'
require './lib/Ticket'
require './lib/Gate'

describe '改札機プログラム' do
  let(:umeda_gate) {Gate.new(:umeda)}
  let(:jyuso_gate) {Gate.new(:jyuso)}
  let(:mikuni_gate) {Gate.new(:mikuni)}

  context '梅田乗車の時' do
    context '150円きっぷの場合' do
      let(:ticket) {Ticket.new(150)}
      it '十三で降りられる' do
        umeda_gate.enter(ticket)
        expect(jyuso_gate.exit(ticket)).to be_truthy
      end
      it '三国で降りられない' do
        umeda_gate.enter(ticket)
        expect(mikuni_gate.exit(ticket)).to be_falsey
      end
    end
    context '190円きっぷの場合' do
      let(:ticket) {Ticket.new(190)}
      it '十三で降りられる' do
        umeda_gate.enter(ticket)
        expect(jyuso_gate.exit(ticket)).to be_truthy
      end
      it '三国で降りられる' do
        umeda_gate.enter(ticket)
        expect(mikuni_gate.exit(ticket)).to be_truthy
      end
    end
  end

  context '十三乗車の時' do
    context '150円きっぷの場合' do
      let(:ticket) {Ticket.new(150)}
      it '梅田で降りられる' do
        jyuso_gate.enter(ticket)
        expect(umeda_gate.exit(ticket)).to be_truthy
      end
      it '三国で降りられる' do
        jyuso_gate.enter(ticket)
        expect(mikuni_gate.exit(ticket)).to be_truthy
      end
    end
  end

  context '三国乗車の時' do
    context '150円きっぷの場合' do
      let(:ticket) {Ticket.new(150)}
      it '十三で降りられる' do
        mikuni_gate.enter(ticket)
        expect(jyuso_gate.exit(ticket)).to be_truthy
      end
      it '梅田で降りられれない' do
        mikuni_gate.enter(ticket)
        expect(umeda_gate.exit(ticket)).to be_falsey
      end
    end
    context '190円きっぷの場合' do
      let(:ticket) {Ticket.new(190)}
      it '十三で降りられる' do
        mikuni_gate.enter(ticket)
        expect(jyuso_gate.exit(ticket)).to be_truthy
      end
      it '梅田で降りられる' do
        mikuni_gate.enter(ticket)
        expect(umeda_gate.exit(ticket)).to be_truthy
      end
    end
  end
end
