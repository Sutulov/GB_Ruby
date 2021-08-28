require_relative 'lib/dir_files'
include DirFiles

files
# p Dir['*'].reject { |x| x.include? '.' }
# # p Dir.glob("*")
# p path = File.join('.')
# scan(path)
# Dir.open('.') do |d|
#   p d #.each { |f| puts "#{f} => #{File.file?(f) ? 'файл' : 'каталог'}" }
# end
