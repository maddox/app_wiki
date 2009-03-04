class Version < ActiveRecord::Base
  belongs_to :app
  has_many :screenshots, :dependent => :destroy
end
