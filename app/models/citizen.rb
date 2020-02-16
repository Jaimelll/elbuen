class Citizen < ApplicationRecord
    mount_uploader :foto, FotoUploader

validates :dni, presence: true, length: {is: 8 },uniqueness: true
    
end
