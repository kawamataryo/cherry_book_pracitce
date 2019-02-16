class WordSynth
  attr_reader :effects

  def initialize
    @effects = []
  end

  def play(word)
    @effects.each do |effect|
      word = effect.call(word)
    end
    word
  end

  def add_effect(effect)
    @effects.push(effect)
  end
end
