# frozen_string_literal: true

require_relative 'lib/super'

news = News.new title: 'Страница',
                body: 'Тело страницы',
                keywords: ['Базовая страница']

p news
