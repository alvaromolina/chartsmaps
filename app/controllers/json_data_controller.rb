class JsonDataController < ApplicationController
  before_action :set_json_datum, only: [:show, :edit, :update, :destroy]

  # GET /json_data
  # GET /json_data.json
  def index
    @json_data = JsonDatum.all
  end

  # GET /json_data/1
  # GET /json_data/1.json
  def show
  end

  # GET /json_data/new
  def new
    @json_datum = JsonDatum.new
  end

  # GET /json_data/1/edit
  def edit
  end

  # POST /json_data
  # POST /json_data.json
  def create
    @json_datum = JsonDatum.new(json_datum_params)

    respond_to do |format|
      if @json_datum.save
        format.html { redirect_to @json_datum, notice: 'Json datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @json_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @json_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /json_data/1
  # PATCH/PUT /json_data/1.json
  def update
    respond_to do |format|
      if @json_datum.update(json_datum_params)
        format.html { redirect_to @json_datum, notice: 'Json datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @json_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /json_data/1
  # DELETE /json_data/1.json
  def destroy
    @json_datum.destroy
    respond_to do |format|
      format.html { redirect_to json_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_json_datum
      @json_datum = JsonDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def json_datum_params
      params.require(:json_datum).permit(:value, :lat, :long)
    end
end
