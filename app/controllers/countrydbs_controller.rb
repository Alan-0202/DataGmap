class CountrydbsController < ApplicationController
  before_action :set_countrydb, only: [:show, :edit, :update, :destroy]

  # GET /countrydbs
  # GET /countrydbs.json
  def index
    @countrydbs = Countrydb.all
  end

  # GET /countrydbs/1
  # GET /countrydbs/1.json
  def show

  end

  # GET /countrydbs/new
  def new
    @countrydb = Countrydb.new
  end

  # GET /countrydbs/1/edit
  def edit
  end

  # POST /countrydbs
  # POST /countrydbs.json
  def create
    @countrydb = Countrydb.new(countrydb_params)

    respond_to do |format|
      if @countrydb.save
        format.html { redirect_to @countrydb, notice: 'Countrydb was successfully created.' }
        format.json { render :show, status: :created, location: @countrydb }
      else
        format.html { render :new }
        format.json { render json: @countrydb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countrydbs/1
  # PATCH/PUT /countrydbs/1.json
  def update
    respond_to do |format|
      if @countrydb.update(countrydb_params)
        format.html { redirect_to @countrydb, notice: 'Countrydb was successfully updated.' }
        format.json { render :show, status: :ok, location: @countrydb }
      else
        format.html { render :edit }
        format.json { render json: @countrydb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countrydbs/1
  # DELETE /countrydbs/1.json
  def destroy
    @countrydb.destroy
    respond_to do |format|
      format.html { redirect_to countrydbs_url, notice: 'Countrydb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countrydb
      @countrydb = Countrydb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def countrydb_params
      params.require(:countrydb).permit(:countryid, :carbonten, :carboneight, :gdpten, :gdpeight)
    end
end
