class AddTourOperatorIdToCatalogs < ActiveRecord::Migration
  def change
    add_column :catalogs, :tour_operator_id, :int
  end
end
