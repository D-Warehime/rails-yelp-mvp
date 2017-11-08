class AddAverageRatingToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :average, :float
  end
end
