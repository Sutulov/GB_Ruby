class HomeController < ApplicationController
  def index
    Rails.logger.info '@@@@@@@@@@@@@@@@@@@@@@@@@'
    Rails.logger.info Rails.inspect
    Rails.logger.info 'Мы находимся в HomeController#index'
    Rails.logger.info '@@@@@@@@@@@@@@@@@@@@@@@@@'
    render plain: 'hello'
  end
end
