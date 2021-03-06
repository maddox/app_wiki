class CreateApps < ActiveRecord::Migration
  def self.up
    create_table :apps do |t|
      t.string :title
      t.string :app_store_url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :apps
  end
end
