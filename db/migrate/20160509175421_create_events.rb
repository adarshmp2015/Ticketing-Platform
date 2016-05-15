class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :details
      t.date :conducted_on
      t.string :ticket_charge
      t.string :total_tickets
      t.string :event_sub
      t.integer :no_of_days

      t.timestamps null: false
    end
  end
end
