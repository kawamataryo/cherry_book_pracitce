class Hash
  def convert_syntax(hash)
    hash.gsub(/:(\w+)\s*=>\s*/, '\1')
  end
end
