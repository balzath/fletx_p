class AddAttachmentFotoToVehiculos < ActiveRecord::Migration
  def self.up
    change_table :vehiculos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :vehiculos, :foto
  end
end
