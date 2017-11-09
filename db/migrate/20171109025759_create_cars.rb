class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :make

      t.timestamps
    end
  end
end
