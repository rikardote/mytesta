class AdscriptionsController < ApplicationController
  before_action :set_adscription, only: [:show, :edit, :update, :destroy]

  # GET /adscriptions
  # GET /adscriptions.json
  def index
    @adscriptions = Adscription.all
  end

  # GET /adscriptions/1
  # GET /adscriptions/1.json
  def show
  end

  # GET /adscriptions/new
  def new
    @adscription = Adscription.new
  end

  # GET /adscriptions/1/edit
  def edit
  end

  # POST /adscriptions
  # POST /adscriptions.json
  def create
    @adscription = Adscription.new(adscription_params)

    respond_to do |format|
      if @adscription.save
        format.html { redirect_to @adscription, notice: 'Adscription was successfully created.' }
        format.json { render :show, status: :created, location: @adscription }
      else
        format.html { render :new }
        format.json { render json: @adscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adscriptions/1
  # PATCH/PUT /adscriptions/1.json
  def update
    respond_to do |format|
      if @adscription.update(adscription_params)
        format.html { redirect_to @adscription, notice: 'Adscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @adscription }
      else
        format.html { render :edit }
        format.json { render json: @adscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adscriptions/1
  # DELETE /adscriptions/1.json
  def destroy
    @adscription.destroy
    respond_to do |format|
      format.html { redirect_to adscriptions_url, notice: 'Adscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adscription
      @adscription = Adscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adscription_params
      params.require(:adscription).permit(:cod, :name)
    end
end
