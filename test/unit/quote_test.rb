require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "save quote" do
    quote            = Quote.new
    quote.quote_text = "when I attended a week long coding intro camp :-) "
    quote.name       = "John Doe"
    quote.url        = "http://www.doe.com"
    quote.email      = "john@doe.com"
    assert quote.save
  end
end
