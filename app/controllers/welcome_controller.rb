class WelcomeController < ApplicationController
  def index
    @card = Card.all
  end

  def new
    @card = Card.new
  end  

  def show
     @card = Card.find(params[:id])
  end
  
  def create
  	@card = Card.new(params[:card])

    if @card.save
      redirect_to @card
    else
      render 'new'
    end
  end
end