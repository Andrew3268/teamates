class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :b_title
      t.string :b_image
      t.string :b_link
      t.string :b_is_price
      t.string :b_was_price
      t.string :b_pct
      t.string :b_reviews
      t.string :b_rating

      t.timestamps
    end
  end
end


