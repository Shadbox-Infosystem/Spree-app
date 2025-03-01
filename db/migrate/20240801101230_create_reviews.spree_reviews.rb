# This migration comes from spree_reviews (originally 20081020220724)
class CreateReviews < SpreeExtension::Migration[4.2]
  def self.up
    create_table :spree_reviews do |t|
      t.integer :product_id
      t.string  :name
      t.string  :location
      t.integer :rating
      t.text    :title
      t.text    :review
      t.boolean :approved, default: true
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :spree_reviews
  end
end
