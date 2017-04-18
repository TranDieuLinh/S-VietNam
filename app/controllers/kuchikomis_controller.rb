class KuchikomisController < ApplicationController
  before_action :set_kuchikomi, only: [:show, :edit, :update, :destroy]

  # GET /kuchikomis
  # GET /kuchikomis.json
  def index
    @kuchikomis = Kuchikomi.all
  end

  # GET /kuchikomis/1
  # GET /kuchikomis/1.json
  def show
  end

  # GET /kuchikomis/new
  def new
    @kuchikomi = Kuchikomi.new
  end

  # GET /kuchikomis/1/edit
  def edit
  end

  # POST /kuchikomis
  # POST /kuchikomis.json
  def create
    @kuchikomi = Kuchikomi.new(kuchikomi_params)

    respond_to do |format|
      if @kuchikomi.save
        format.html { redirect_to @kuchikomi, notice: 'Kuchikomi was successfully created.' }
        format.json { render :show, status: :created, location: @kuchikomi }
      else
        format.html { render :new }
        format.json { render json: @kuchikomi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kuchikomis/1
  # PATCH/PUT /kuchikomis/1.json
  def update
    respond_to do |format|
      if @kuchikomi.update(kuchikomi_params)
        format.html { redirect_to @kuchikomi, notice: 'Kuchikomi was successfully updated.' }
        format.json { render :show, status: :ok, location: @kuchikomi }
      else
        format.html { render :edit }
        format.json { render json: @kuchikomi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kuchikomis/1
  # DELETE /kuchikomis/1.json
  def destroy
    @kuchikomi.destroy
    respond_to do |format|
      format.html { redirect_to kuchikomis_url, notice: 'Kuchikomi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kuchikomi
      @kuchikomi = Kuchikomi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kuchikomi_params
      params.require(:kuchikomi).permit(:user_id, :scenery_id, :review_content)
    end
end
