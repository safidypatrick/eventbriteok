class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
    	t.string :stripe_customer_id
    	t.belongs_to :user, index: true
    	t.belongs_to :evenement, index: true

      t.timestamps
    end
  end
end
