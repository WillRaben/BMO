class Archive < ActiveRecord::Base
  belongs_to :users
  attr_accessible :file, :user_id
  mount_uploader :file, FileUploader
end
