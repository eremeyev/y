class CreateMagazins < ActiveRecord::Migration
  def self.up
    create_table :magazins do |t|
      t.string :num
      t.string :name
      t.string :year
      t.string :season

      t.timestamps
    end
  end

  def self.down
    drop_table :magazins
  end
end
