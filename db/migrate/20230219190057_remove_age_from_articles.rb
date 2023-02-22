class RemoveAgeFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :age, :integer
  end
end
