class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.string :link
      t.string :is_price
      t.string :was_price
      t.string :pct
      t.string :reviews
      t.string :rating


      t.timestamps
    end
  end
end
