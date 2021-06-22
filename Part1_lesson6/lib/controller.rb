class Controller
  def check(user)
    if user.ticket
      puts 'Билет в наличие'
    else
      puts 'Билет не обнаружен'
    end
  end
end
