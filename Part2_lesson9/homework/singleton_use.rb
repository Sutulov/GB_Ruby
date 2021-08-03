# frozen_string_literal: true

require_relative 'lib/singleton'

setting = Settings.instance
setting[:title] = 'Новостной портал'
setting[:per_page] = 30

params = Settings.instance
p params[:title]
p params[:per_page]
