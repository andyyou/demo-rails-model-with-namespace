class Admin::SonsController < ApplicationController
  before_action :set_admin_son, only: [:show, :edit, :update, :destroy]

  # GET /admin/sons
  # GET /admin/sons.json
  def index
    @admin_sons = Admin::Son.all
  end

  # GET /admin/sons/1
  # GET /admin/sons/1.json
  def show
  end

  # GET /admin/sons/new
  def new
    @admin_son = Admin::Son.new
  end

  # GET /admin/sons/1/edit
  def edit
  end

  # POST /admin/sons
  # POST /admin/sons.json
  def create
    @admin_son = Admin::Son.new(admin_son_params)

    respond_to do |format|
      if @admin_son.save
        format.html { redirect_to @admin_son, notice: 'Son was successfully created.' }
        format.json { render :show, status: :created, location: @admin_son }
      else
        format.html { render :new }
        format.json { render json: @admin_son.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sons/1
  # PATCH/PUT /admin/sons/1.json
  def update
    respond_to do |format|
      if @admin_son.update(admin_son_params)
        format.html { redirect_to @admin_son, notice: 'Son was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_son }
      else
        format.html { render :edit }
        format.json { render json: @admin_son.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sons/1
  # DELETE /admin/sons/1.json
  def destroy
    @admin_son.destroy
    respond_to do |format|
      format.html { redirect_to admin_sons_url, notice: 'Son was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_son
      @admin_son = Admin::Son.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_son_params
      params.require(:admin_son).permit(:name, :admin_father_id)
    end
end
