# frozen_string_literal: true

require_relative 'lib/page_initialize'

page = Page.new title: 'Страница',
                body: 'Тело страницы',
                keywords: ['Базовая страница']

p page
