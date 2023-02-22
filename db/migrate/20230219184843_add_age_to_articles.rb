class AddAgeToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :user_age, :integer
  end
end
