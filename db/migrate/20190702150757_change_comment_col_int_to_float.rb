class ChangeCommentColIntToFloat < ActiveRecord::Migration[5.2]
  def up
    change_column :comments, :rating, :float, using:'rating::float'
  end

  def down
    change_column :comments, :rating, :integer
  end
end
