class AddRoomIdToReservations < ActiveRecord::Migration
  def change
    add_reference :reservations, :room, index: true
    add_foreign_key :reservations, :rooms
  end
end
