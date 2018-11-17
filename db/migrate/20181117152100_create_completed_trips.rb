class CreateCompletedTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_trips do |t|

      t.timestamps
    end
  end
end
