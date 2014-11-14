class WelcomeController < ApplicationController
  def index
    @courses = Course.includes(:subject).last(10).reverse
  end
end
