class WelcomeController < ApplicationController
  def index
    @cards = Card.all
    @card = Card.(params[1])
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

  private
    def card_params
      params.require(:card).permit(:original_text, :translated_text, :review_date)
    end
end