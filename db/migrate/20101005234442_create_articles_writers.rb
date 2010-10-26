class CreateArticlesWriters < ActiveRecord::Migration
  def self.up
    create_table :articles_writers do |t|
      t.integer :article_id
      t.integer :writer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :articles_writers
  end
end
