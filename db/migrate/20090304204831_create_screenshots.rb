class CreateScreenshots < ActiveRecord::Migration
  def self.up
    create_table :screenshots do |t|
      t.integer :version_id
      t.integer :size
      t.string :content_type
      t.string :filename
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end

  def self.down
    drop_table :screenshots
  end
end
