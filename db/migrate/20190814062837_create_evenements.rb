class CreateEvenements < ActiveRecord::Migration[6.0]
  def change
    create_table :evenements do |t|
    	t.datetime :star_date
    	t.integer :duration
    	t.string :title
    	t.text :description
    	t.integer :price
    	t.string :location
    	t.belongs_to :user, index: true
        t.timestamps
    end
  end
end
