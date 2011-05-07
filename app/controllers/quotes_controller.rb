class QuotesController < ApplicationController
  def show
    offset = rand(Quote.count).to_i
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
  
  def index
    @quotes = Quote.all
  end
  
  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
    redirect_to quotes_path
  end
end
