class Citizen < ApplicationRecord
    mount_uploader :foto, FotoUploader
end
