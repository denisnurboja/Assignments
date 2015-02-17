class SupercomputersController < ApplicationController
  before_action :set_supercomputer, only: [:show, :edit, :update, :destroy]

  # GET /supercomputers
  # GET /supercomputers.json
  def index
    @supercomputers = Supercomputer.all
  end

  # GET /supercomputers/1
  # GET /supercomputers/1.json
  def show
  end

  # GET /supercomputers/new
  def new
    @supercomputer = Supercomputer.new
  end

  # GET /supercomputers/1/edit
  def edit
  end

  # POST /supercomputers
  # POST /supercomputers.json
  def create
    @supercomputer = Supercomputer.new(supercomputer_params)

    respond_to do |format|
      if @supercomputer.save
        format.html { redirect_to @supercomputer, notice: 'Supercomputer was successfully created.' }
        format.json { render :show, status: :created, location: @supercomputer }
      else
        format.html { render :new }
        format.json { render json: @supercomputer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supercomputers/1
  # PATCH/PUT /supercomputers/1.json
  def update
    respond_to do |format|
      if @supercomputer.update(supercomputer_params)
        format.html { redirect_to @supercomputer, notice: 'Supercomputer was successfully updated.' }
        format.json { render :show, status: :ok, location: @supercomputer }
      else
        format.html { render :edit }
        format.json { render json: @supercomputer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supercomputers/1
  # DELETE /supercomputers/1.json
  def destroy
    @supercomputer.destroy
    respond_to do |format|
      format.html { redirect_to supercomputers_url, notice: 'Supercomputer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supercomputer
      @supercomputer = Supercomputer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supercomputer_params
      params.require(:supercomputer).permit(:rank, :name, :city, :country, :speed, :memory, :power)
    end
end
