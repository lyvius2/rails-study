class ModifyLikesCountDefaultValueInPost < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:posts, :likes_count, 0)
  end
end
