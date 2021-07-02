# frozen_string_literal: true

require_relative 'lib/class_user'
require_relative 'lib/encoding'
Rus.new.encoding

user1 = User.new
user2 = User.new
user3 = User.new
arr = [user1, user2, user3]
arr.each { |element| element.surname, element.name, element.snd_name = *element.query }
