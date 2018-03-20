class CreateJoinTableTechnologyPortfolio < ActiveRecord::Migration[5.1]
  def change
  	create_table :technologies_portfolios, id: false do |t|
  		t.references :technology, index: true, foreign_key: true
  		t.references :portfolio, index: true, foreign_key: true
  	end
  	add_index :technologies_portfolios, [:technology_id, :portfolio_id]
  end
end
