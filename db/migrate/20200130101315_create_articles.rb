class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :link
      t.string :headline
      t.text :preview
      t.string :source

      t.timestamps
    end
  end
end
