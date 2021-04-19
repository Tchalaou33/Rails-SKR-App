class AddColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :content, :string
    add_column :reviews, :user_id, :integer
    add_column :reviews, :routine_id, :integer
  end
end
