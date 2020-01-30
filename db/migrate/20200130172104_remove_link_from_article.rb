class RemoveLinkFromArticle < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :link, :string
  end
end
