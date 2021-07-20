# Class for grouping users
class Group
  def initialize(*users)
    @users = users
  end

  def each
    @users.each do |user|
      yield [user.surname, user.name, user.patronymic]
    end
  end
end
