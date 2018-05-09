class RenameReviewsCommentsIntoComment < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :comments, :comment
  end
end
