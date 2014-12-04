class RemoveCationFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :caption, :string
  end
end
