# frozen_string_literal: true

%w[about news photo_catalog].each do |file|
  require_relative "lib/#{file}"
end

about = About.new

about.title = 'О нас'
about.body = 'Вы можете обнаружить нас по адресу'
about.keywords = ['О нас', 'Адреса', 'Телефоны']
about.phones = ['+7 920 4567731', '+7 920 4563123']

p about
