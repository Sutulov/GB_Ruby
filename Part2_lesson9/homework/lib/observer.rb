class Subject
  def attach(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def detach(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def notify
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class HydrometeorologicalСenter < Subject
  attr_accessor :state

  def initialize
    @observers = []
  end

  def attach(observer)
    puts 'Subject: Attached an observer.'
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    puts 'Subject: Notifying observers...'
    @observers.each { |observer| observer.update(self) }
  end

  def forecast
    @state = rand(-30..40)

    puts "Завтра ожидаем температуру равную: #{@state}"
    notify
  end
end

class Observer
  def update(_subject)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class MinistryEmergencySituations < Observer

  def update(subject)
    puts "Внимание завтра ожидаеться сильное похолодание до #{subject.state}" if subject.state < -20
    puts "Внимание завтра ожидаеться сильная жара до #{subject.state}" if subject.state > 30
  end
end

class School < Observer

  def update(subject)
    puts 'Завтра младшие классы не учатся' if subject.state < -15  
  end

  class RoadService < Observer

    def update(subject)
      puts 'Завтра надо обработать улицы противогололедным средством!' if (subject.state > -3 && subject.state < 0)
    end
  end
end
