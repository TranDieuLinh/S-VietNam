class MeibutusController < ApplicationController
  before_action :set_meibutu, only: [:show, :edit, :update, :destroy]

  # GET /meibutus
  # GET /meibutus.json
  def index
    @meibutus = Meibutu.all
  end

  # GET /meibutus/1
  # GET /meibutus/1.json
  def show
  end

  # GET /meibutus/new
  def new
    @meibutu = Meibutu.new
  end

  # GET /meibutus/1/edit
  def edit
  end

  # POST /meibutus
  # POST /meibutus.json
  def create
    @meibutu = Meibutu.new(meibutu_params)

    respond_to do |format|
      if @meibutu.save
        format.html { redirect_to @meibutu, notice: 'Meibutu was successfully created.' }
        format.json { render :show, status: :created, location: @meibutu }
      else
        format.html { render :new }
        format.json { render json: @meibutu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meibutus/1
  # PATCH/PUT /meibutus/1.json
  def update
    respond_to do |format|
      if @meibutu.update(meibutu_params)
        format.html { redirect_to @meibutu, notice: 'Meibutu was successfully updated.' }
        format.json { render :show, status: :ok, location: @meibutu }
      else
        format.html { render :edit }
        format.json { render json: @meibutu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meibutus/1
  # DELETE /meibutus/1.json
  def destroy
    @meibutu.destroy
    respond_to do |format|
      format.html { redirect_to meibutus_url, notice: 'Meibutu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meibutu
      @meibutu = Meibutu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meibutu_params
      params.require(:meibutu).permit(:speciatly_id, :specialty_name, :specialty_picture)
    end
end
