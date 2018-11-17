class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.belongs_to :user
      t.belongs_to :trip
      t.string :location
      t.string :house_type
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
