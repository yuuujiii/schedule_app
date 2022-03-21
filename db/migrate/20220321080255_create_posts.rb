class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start_day
      t.date :end_day
      t.string :all_day

      t.timestamps
    end
  end
end
