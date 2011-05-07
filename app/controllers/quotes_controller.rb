class QuotesController < ApplicationController
  def show
    @quote = Quote.first
  end

  def new
    
  end

  def create
  end

end
