class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true
      t.date :check_in
      t.date :check_out
      t.boolean :confirmed
      t.text :message

      t.timestamps
    end
  end
end
