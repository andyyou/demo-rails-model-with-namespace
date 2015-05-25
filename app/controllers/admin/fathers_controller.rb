class Admin::FathersController < ApplicationController
  before_action :set_admin_father, only: [:show, :edit, :update, :destroy]

  # GET /admin/fathers
  # GET /admin/fathers.json
  def index
    @admin_fathers = Admin::Father.all
  end

  # GET /admin/fathers/1
  # GET /admin/fathers/1.json
  def show
  end

  # GET /admin/fathers/new
  def new
    @admin_father = Admin::Father.new
  end

  # GET /admin/fathers/1/edit
  def edit
  end

  # POST /admin/fathers
  # POST /admin/fathers.json
  def create
    @admin_father = Admin::Father.new(admin_father_params)

    respond_to do |format|
      if @admin_father.save
        format.html { redirect_to @admin_father, notice: 'Father was successfully created.' }
        format.json { render :show, status: :created, location: @admin_father }
      else
        format.html { render :new }
        format.json { render json: @admin_father.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/fathers/1
  # PATCH/PUT /admin/fathers/1.json
  def update
    respond_to do |format|
      if @admin_father.update(admin_father_params)
        format.html { redirect_to @admin_father, notice: 'Father was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_father }
      else
        format.html { render :edit }
        format.json { render json: @admin_father.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/fathers/1
  # DELETE /admin/fathers/1.json
  def destroy
    @admin_father.destroy
    respond_to do |format|
      format.html { redirect_to admin_fathers_url, notice: 'Father was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_father
      @admin_father = Admin::Father.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_father_params
      params.require(:admin_father).permit(:name)
    end
end
