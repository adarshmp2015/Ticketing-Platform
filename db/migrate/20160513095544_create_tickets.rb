class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :participant
      t.string :gender
      t.string :user
      t.string :fee
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
