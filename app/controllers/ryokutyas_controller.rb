class RyokutyasController < ApplicationController
  before_action :set_ryokutya, only: [:show, :edit, :update, :destroy]

  # GET /ryokutyas
  # GET /ryokutyas.json
  def index
    @ryokutyas = Ryokutya.all
  end

  # GET /ryokutyas/1
  # GET /ryokutyas/1.json
  def show
  end

  # GET /ryokutyas/new
  def new
    @ryokutya = Ryokutya.new
  end

  # GET /ryokutyas/1/edit
  def edit
  end

  # POST /ryokutyas
  # POST /ryokutyas.json
  def create
    @ryokutya = Ryokutya.new(ryokutya_params)

    respond_to do |format|
      if @ryokutya.save
        format.html { redirect_to @ryokutya, notice: 'Ryokutya was successfully created.' }
        format.json { render :show, status: :created, location: @ryokutya }
      else
        format.html { render :new }
        format.json { render json: @ryokutya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ryokutyas/1
  # PATCH/PUT /ryokutyas/1.json
  def update
    respond_to do |format|
      if @ryokutya.update(ryokutya_params)
        format.html { redirect_to @ryokutya, notice: 'Ryokutya was successfully updated.' }
        format.json { render :show, status: :ok, location: @ryokutya }
      else
        format.html { render :edit }
        format.json { render json: @ryokutya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ryokutyas/1
  # DELETE /ryokutyas/1.json
  def destroy
    @ryokutya.destroy
    respond_to do |format|
      format.html { redirect_to ryokutyas_url, notice: 'Ryokutya was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ryokutya
      @ryokutya = Ryokutya.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ryokutya_params
      params.fetch(:ryokutya, {})
    end
end
