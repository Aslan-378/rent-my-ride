class AddColumnsToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :content, :text
    add_column :reviews, :rating, :integer
  end
end
