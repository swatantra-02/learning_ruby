class AddTimestampToArticle < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :created_at1, :datetime
    add_column :articles, :updated_at1, :datetime
  end
end
