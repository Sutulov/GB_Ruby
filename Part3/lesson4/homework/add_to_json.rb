# Class hash
class Hash
  def to_json(*_args)
    json = '{'
    each { |key, value| json << "\"#{key}\":\"#{value}\"," }
    json.delete_suffix!(",")
    json << '}'
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
