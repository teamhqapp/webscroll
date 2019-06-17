class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.integer :published_by_id
      t.integer :author_id
      t.text :slug

      t.timestamps
    end
  end
end
