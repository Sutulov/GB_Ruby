require_relative 'lib/page_include'

about = About.new

about.title = 'О нас'
about.body = 'Вы можете найти нас по адресам'
about.phones = ['+7 905 4562789', '+7 967 7896423']
about.address = 'Самара'

about.meta_title = about.title
about.meta_description = "Адрес: #{about.address}"
about.meta_keywords = ['О нас', 'Адреса', 'Телефоны']

p about.title
p about.body
p about.phones.join ', '
p about.address

p about.meta_title
p about.meta_description
p about.meta_keywords.join ', '
