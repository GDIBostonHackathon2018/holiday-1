class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :saves do |t|
      t.belongs_to :user
      t.belongs_to :listing

      t.timestamps
    end
  end
end
