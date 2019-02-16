module DeepFreezable

  def deep_freeze(be_frozen)
    if be_frozen.is_a? Array
      be_frozen.map(&:freeze).freeze
    else
      be_frozen.each do |k, v|
        k.freeze
        v.freeze
      end
      be_frozen.freeze
    end
  end
end
