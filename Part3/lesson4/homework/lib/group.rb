class Group
  include Enumerable
  attr_accessor :users

  def initialize(surname, name, position)
    User.new(surname, name, position).user { |fio, position| @users[[fio] = position }


  def each
    users.each { |user| yield user }
  end


  class User
    attr_accessor :fio, position

    def initialize(fio, position)
      @fio = fio
      @position = position
    end

    def user
      yield fio, position
  end
end
