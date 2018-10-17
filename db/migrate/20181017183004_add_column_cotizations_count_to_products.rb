class AddColumnCotizationsCountToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cotizations_count, :integer, default: 0, null: true
  end
end
