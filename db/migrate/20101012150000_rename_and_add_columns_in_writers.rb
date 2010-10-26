class CreateArticlesSections < ActiveRecord::Migration
  def self.up
    create_table :articles_sections do |t|
      t.integer :article_id
      t.integer :section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :articles_sections
  end
end
