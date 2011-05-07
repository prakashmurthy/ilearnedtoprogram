class QuotesController < ApplicationController
  def index
    offset = rand(Quote.count)
    @quote = Quote.first(:offset => offset)
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      redirect_to :root 
    else
      render :action => "new" 
    end
  end

end
