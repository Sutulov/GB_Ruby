# frozen_string_literal: true

arr = %w[help about].select! { |i| i.start_with?('a') }
p new = { 'Помощь': 'help', 'О нас': 'about', 'Главная страница': 'root' }
p new = new.select!.each { |_key, value| value != 'about' }
new.each do |key, value|
  p key.to_s + value
end
