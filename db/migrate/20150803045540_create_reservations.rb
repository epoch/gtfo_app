class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :start_at
      t.string :email

      t.timestamps null: false
    end
  end
end
