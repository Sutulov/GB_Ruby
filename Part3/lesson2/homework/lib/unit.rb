# frozen_string_literal: true

# Class unit
class Unit
  attr_accessor :staff

  def initialize(start)
    @staff = start
  end

  def add(name, position)
    if @staff.key?(name)
      puts 'Этот работник у нас уже работает!'
    else
      Employee.new(name, position).user.each { |key, value| @staff[key] = value }
    end
  end

  def remove(name)
    staff.delete(name)
  end

  def edit(name, position)
    if @staff.key?(name)
      @staff[name] = position
    else
      puts 'Такого работника у нас нет!'
    end
  end

  def sort(position)
    @staff.select { |_key, value| value == position }
  end

  def list
    @staff.to_a.sort.each { |item| puts "#{item.first} - #{item.last}" }
  end

  # Class employee
  class Employee
    attr_accessor :user

    def initialize(name, position)
      @user = { name => position }
    end
  end
end
