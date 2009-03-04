class Screenshot < ActiveRecord::Base
  belongs_to :version

  has_attachment :content_type => :image, 
                 :path_prefix => 'public/system/screenshots',
                 :processor => 'MiniMagick',
                 :thumbnails => { :thumb => '100>' }
end
