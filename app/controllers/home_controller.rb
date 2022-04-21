class HomeController < ApplicationController

  before_action :authenticate_user!
  def index
    @vehiculos = Vehiculo.where(estado: 'DISPONIBLE')
  end
end
