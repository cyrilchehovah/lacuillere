class DeleteReviewForRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :review, :integer
  end
end
