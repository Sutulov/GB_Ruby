# frozen_string_literal: true

# The Subject interface declares a set of methods for managing subscribers.
class Subject
  def attach(_observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def detach(_observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def notify
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# The Subject owns some important state and notifies observers when the state
# changes.
class HydrometeorologicalCenter < Subject
  attr_accessor :state

  def initialize
    @observers = []
    super
  end

  def attach(observer)
    puts "Прикреплен наблюдатель #{observer.class.name}"
    @observers << observer
  end

  def detach(observer)
    puts "Открикреплен наблюдатель #{observer.class.name}"
    @observers.delete(observer)
  end

  def notify
    puts 'Уведомление наблюдателей'
    @observers.each { |observer| observer.update(self) }
  end

  def forecast
    @state = rand(-30..40)

    puts "Завтра ожидаем температуру равную: #{@state}"
    notify
  end
end

# The Observer interface declares the update method, used by subjects.
class Observer
  def update(_subject)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Concrete Observers react to the updates issued by the Subject they had been
# attached to.

# Class of Ministry Emergency Situations
class MinistryEmergencySituations < Observer
  def update(subject)
    puts "Внимание завтра ожидаеться сильное похолодание до #{subject.state}" if subject.state < -20
    puts "Внимание завтра ожидаеться сильная жара до #{subject.state}" if subject.state > 30
  end
end

# Class of schol
class School < Observer
  def update(subject)
    puts 'Завтра младшие классы не учатся' if subject.state < -15
  end
end

# Class of road service
class RoadService < Observer
  def update(subject)
    puts 'Завтра надо обработать улицы противогололедным средством!' if subject.state > -3 && subject.state.negative?
  end
end
