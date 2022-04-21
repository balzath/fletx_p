class UsersvehiculosController < ApplicationController
  before_action :set_usersvehiculo, only: %i[ show edit update destroy ]

  # GET /usersvehiculos or /usersvehiculos.json
  def index
    @usersvehiculos = Usersvehiculo.all
  end

  # GET /usersvehiculos/1 or /usersvehiculos/1.json
  def show
  end

  # GET /usersvehiculos/new
  def new
    @usersvehiculo = Usersvehiculo.new
    @vehiculo = Vehiculo.find(params[:vehiculo_id])
    respond_to do |format|
      format.js
    end
  end

  # GET /usersvehiculos/1/edit
  def edit
  end

  # POST /usersvehiculos or /usersvehiculos.json
  def create
    @vehiculo = Vehiculo.find(params[:vehiculo_id])
    @usersvehiculo = Usersvehiculo.new(vehiculospermitido_params)
    @usersvehiculo.vehiculo_id = @vehiculo.id
    @usersvehiculo.estado = 'ACTIVO'
    respond_to do |format|
      if @usersvehiculo.save
        flash['success'] = "Guardado Correctamente"
        format.js
      else
        format.js { render 'layouts/errors', locals: { object: @usersvehiculo } }
      end
    end
  end

  # PATCH/PUT /usersvehiculos/1 or /usersvehiculos/1.json
  def update
    respond_to do |format|
      if @usersvehiculo.update(usersvehiculo_params)
        format.html { redirect_to usersvehiculo_url(@usersvehiculo), notice: "Usersvehiculo was successfully updated." }
        format.json { render :show, status: :ok, location: @usersvehiculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usersvehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usersvehiculos/1 or /usersvehiculos/1.json
  def destroy
    @usersvehiculo.destroy

    respond_to do |format|
      format.html { redirect_to usersvehiculos_url, notice: "Usersvehiculo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersvehiculo
      @usersvehiculo = Usersvehiculo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usersvehiculo_params
      params.require(:usersvehiculo).permit(:user_id, :vehiculo_id, :horas, :estado)
    end
end
