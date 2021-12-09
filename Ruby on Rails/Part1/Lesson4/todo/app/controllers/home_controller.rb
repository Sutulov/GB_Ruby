class HomeController < ApplicationController
  def index
    render plain: 'hello'
  end
end
