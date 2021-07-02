require_relative 'lib/class_user'
require_relative 'lib/encoding'
Rus.new.encoding

user1 = User.new
user2 = User.new
user3 = User.new
arr = [user1, user2, user3]
arr.each {|element| element.fio = (element.query),  element.name = (element.query) }
# arr.each {|element| element.fio = (element.query)}
# arr.each {|element| element.fio = (element.query)}
puts arr.first.fio
puts arr[1].fio
puts arr.last.fio
