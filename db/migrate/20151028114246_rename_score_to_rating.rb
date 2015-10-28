class RenameScoreToRating < ActiveRecord::Migration
  def change
    rename_column :reviews, :score, :rating
  end
end
