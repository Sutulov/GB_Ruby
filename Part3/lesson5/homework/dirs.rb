module Dirs
  def input
    Dir.glob('**')
  end
end

include Dirs

puts Dirs.input
