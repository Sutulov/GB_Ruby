# frozen_string_literal: true

# Class group
class Group
  include Enumerable
  attr_accessor :users

  def initialize(users)
    @users = users
  end

  def each(&block)
    users.each(&block)
  end

  def add(fio, position)
    if @users.key?(fio)
      puts 'Этот работник у нас уже работает!'
    else
      User.new(fio, position).user { |key, value| @users[key] = value }
    end
  end

  # Class user
  class User
    attr_accessor :fio, :position

    def initialize(fio, position)
      @fio = fio
      @position = position
    end

    def user
      yield fio, position
    end
  end
end
