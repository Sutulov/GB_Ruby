class Controller
  def check(user)
    if user.ticket
      puts 'Билет в наличие'
      if user.ticket.name == user.name
        puts 'Билет на имя пользователя'
      else
        puts 'Билет на чужое имя'
      end

      if user.ticket.date == Date.today
        puts 'Билет на сегодняшнюю дату'
      else
        puts 'Билет на другую дату'
      end
    else
      puts 'Билет не обнаружен'
    end   
  end
end
