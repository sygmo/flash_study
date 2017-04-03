class DecksController < ApplicationController

  before_filter :authorize

  def index
    @user = User.find(session[:user_id])
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
    deck = Deck.new(deck_params)
    if deck.save
      redirect_to '/'
    else
      redirect_to '/new_deck'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def deck_params
    params.require(:deck).permit(:user_id, :title, :description, :public)
  end
end
