class CreateTourOperators < ActiveRecord::Migration
  def change
    create_table :tour_operators do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
