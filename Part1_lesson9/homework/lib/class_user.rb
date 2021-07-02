class User
  def fio(surname, name, snd_name)
    @surname = surname
    @name = name
    @snd_name = snd_name
  end

  attr_reader :fio
end
