class CasController < ApplicationController
  before_action :set_ca, only: [:show, :edit, :update, :destroy]

  # GET /cas
  # GET /cas.json
  def index
    @cas = Ca.all
  end

  # GET /cas/1
  # GET /cas/1.json
  def show
  end

  # GET /cas/new
  def new
    @ca = Ca.new
  end

  # GET /cas/1/edit
  def edit
  end

  # POST /cas
  # POST /cas.json
  def create
    @ca = Ca.new(ca_params)

    respond_to do |format|
      if @ca.save
        format.html { redirect_to @ca, notice: 'Ca was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ca }
      else
        format.html { render action: 'new' }
        format.json { render json: @ca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cas/1
  # PATCH/PUT /cas/1.json
  def update
    respond_to do |format|
      if @ca.update(ca_params)
        format.html { redirect_to @ca, notice: 'Ca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cas/1
  # DELETE /cas/1.json
  def destroy
    @ca.destroy
    respond_to do |format|
      format.html { redirect_to cas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ca
      @ca = Ca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ca_params
      params.require(:ca).permit(:ca_number, :subject, :originator, :responsible, :date_opened, :date_due, :closed_date, :priority, :description, :customer, :part, :containment_action, :root_Cause, :rc_category, :corrective_action, :preventive_action, :validation)
    end
end
