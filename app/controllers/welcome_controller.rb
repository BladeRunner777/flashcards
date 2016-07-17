class WelcomeController < ApplicationController
  def index
  end

  def create
  	@card = Card.new(params[:card])

    @card.save
    redirect_to @card
  end
end
