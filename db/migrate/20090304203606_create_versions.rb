class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.integer :app_id
      t.string :number
      t.text :release_notes

      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end
