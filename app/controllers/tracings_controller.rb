class TracingsController < ApplicationController
  before_action :set_tracing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index,:show, :new, :edit, :update, :destroy]
  # GET /tracings
  # GET /tracings.json
  def index
    @tracings = Tracing.all
    @total= Tracing.sum(:valor)
  end

  # GET /tracings/1
  # GET /tracings/1.json
  def show
  end

  # GET /tracings/new
  def new
    @tracing = Tracing.new
  end

  # GET /tracings/1/edit
  def edit
  end

  # POST /tracings
  # POST /tracings.json
  def create
    @tracing = Tracing.new(tracing_params)

    respond_to do |format|
      if @tracing.save
        format.html { redirect_to @tracing, notice: 'Tracing was successfully created.' }
        format.json { render :show, status: :created, location: @tracing }
      else
        format.html { render :new }
        format.json { render json: @tracing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracings/1
  # PATCH/PUT /tracings/1.json
  def update
    respond_to do |format|
      if @tracing.update(tracing_params)
        format.html { redirect_to @tracing, notice: 'Tracing was successfully updated.' }
        format.json { render :show, status: :ok, location: @tracing }
      else
        format.html { render :edit }
        format.json { render json: @tracing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracings/1
  # DELETE /tracings/1.json
  def destroy
    @tracing.destroy
    respond_to do |format|
      format.html { redirect_to tracings_url, notice: 'Tracing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracing
      @tracing = Tracing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tracing_params
      params.require(:tracing).permit(:descripcion, :valor)
    end
end
