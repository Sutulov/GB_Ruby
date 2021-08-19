class Hash
  def to_json
    'Работает'
  end
end

hash = { 'Петров Стас Григорьевич' => 'руководитель' }
p hash.to_json
