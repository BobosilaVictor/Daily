class CreateNewsArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :news_articles do |t|
      t.text :title
      t.text :description
      t.string :url
      t.string :source

      t.timestamps
    end
  end
end
