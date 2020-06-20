def to_hex(r,b,g)
  # '#' +
  # r.to_s.rjust(2 ,'0') +
  # b.to_s.rjust(2 , '0') +
  # g.to_s.rjust(2 ,'0')

  # hex = '#' 
  # [r, b, g].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  # hex

  [r, b, g].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex) 
  r = hex[1..2]
  b = hex[3..4]
  g = hex[5..6]
  # .hexは16進法を10進法へ変換する方法
  # ints = []
  # [r, b, g].each do |n|
  #   ints << n.hex
  # end 
  # ints

  [r, b, g].map do |s|
    s.hex
  end

  # r,g,b = hex[1..2],hex[3..4],hex[5..6]
  # [r, g, b].map do |s|
  #   s.hex
  # end

  #r, b, g =  '#12abcd'.scan('\/w/w\')
  # [r, g, b].map do |s| or  '#12abcd'.scan('\/w/w\').map do |s| 
  #  s.hex
    # or  '#12abcd'.scan('\/w/w\').map(:&hex)
  # end
end