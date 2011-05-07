class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.text :quote_text
      t.string :name
      t.string :url
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
