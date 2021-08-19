# Class hash
class Hash
  def to_json(*_args)
    json = '{'
    each do |key, value|
      json << "\"#{key}\":"
      json << values(value)
    end
    json.delete_suffix!(',')
    json << '}'
  end

  def values(value)
    case value
    when Hash
      value.to_json
    when String
      "\"#{value}\","
    else
      "#{value},"
    end
  end
end

hash = {
  'Петров Стас Григорьевич' => 'руководитель',
  'Семёнов Игорь Васильевич' => 'бэкенд-разработчик',
  'Лунгина Лиза Петровна' => 'фронтенд-разработчик',
  'Лужков Виктор Степанович' => 'фронтенд-разработчик',
  'Крыгин Пётр Алексеевич' => 'тестировщик',
  'Иванова Анна Серьгеевна' => 'дизайнер'
}

puts hash.to_json

person = {
  first_name: 'Иван',
  last_name: 'Петрович',
  patronymic: 'Сидоров',
  params: {
    score: 20,
    number: 762
  }
}

puts person.to_json
