class Usersvehiculo < ApplicationRecord
  belongs_to :user
  belongs_to :vehiculo
end
