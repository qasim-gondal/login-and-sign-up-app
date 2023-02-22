class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end
