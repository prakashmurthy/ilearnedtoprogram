class AddUuidToQuote < ActiveRecord::Migration
  def self.up
    add_column :quotes, :uuid, :string
    add_index :quotes, :uuid, :unique => true
    
    Quote.all.each do |quote|
      quote.generate_uuid
      quote.save
    end
  end

  def self.down
    remove_column :quotes, :uuid
  end
end
