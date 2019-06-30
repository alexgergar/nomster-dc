class ChangeCommentColStringToInteger < ActiveRecord::Migration[5.2]
  def up
    change_column :comments, :rating, :integer, using:'rating::integer'
  end

  def down
    change_column :comments, :rating, :string
  end
end
