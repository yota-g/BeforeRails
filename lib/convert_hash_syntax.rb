def convert_hash_syntax(old_syntax)
  # (:([a-z0-9_])+[ ]=>,[/1]:)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end
