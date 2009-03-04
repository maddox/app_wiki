class AddSupportForThumbs < ActiveRecord::Migration
  def self.up
    add_column :screenshots, :parent_id, :integer
    add_column :screenshots, :thumbnail, :string
  end

  def self.down
    remove_column :screenshots, :thumbnail
    remove_column :screenshots, :parent_id
  end
end
