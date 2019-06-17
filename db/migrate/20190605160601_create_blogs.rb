class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :about_url
      t.text :terms_url
      t.text :copyright_text    

      t.timestamps
    end
  end
end
