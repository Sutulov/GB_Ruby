class Controller
  def check(user)
    if user.ticket
      puts 'Билет в наличие'
    end
  end
end
