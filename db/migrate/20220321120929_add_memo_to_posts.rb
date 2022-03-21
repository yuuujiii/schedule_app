
class AddMemoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :memo, :string
  end
end
