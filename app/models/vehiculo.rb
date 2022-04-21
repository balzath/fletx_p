class Vehiculo < ApplicationRecord
    has_attached_file :foto
    # Validate content type
    validates_attachment_content_type :foto, content_type: /\Aimage/
end
