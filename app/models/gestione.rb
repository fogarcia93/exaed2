class Gestione < ApplicationRecord
 belongs_to :user
 mount_uploader :my_file, FileUploader
end
