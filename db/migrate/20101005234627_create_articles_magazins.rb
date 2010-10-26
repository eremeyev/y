class CreateArticlesMagazins < ActiveRecord::Migration
  def self.up
    create_table :articles_magazins do |t|
      t.integer :article_id
      t.integer :magazin_id

      t.timestamps
    end
  end

  def self.down
    drop_table :articles_magazins
  end
end
