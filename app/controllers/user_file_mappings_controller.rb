class UserFileMappingsController < ApplicationController
  before_action :set_user_file_mapping, only: [:show, :edit, :update, :destroy]

  # GET /user_file_mappings
  # GET /user_file_mappings.json
  def index
    @user_file_mappings = UserFileMapping.all
  end

  # GET /user_file_mappings/1
  # GET /user_file_mappings/1.json
  def show
  end

  # GET /user_file_mappings/new
  def new
    @user_file_mapping = UserFileMapping.new
  end

  # GET /user_file_mappings/1/edit
  def edit
  end

  # POST /user_file_mappings
  # POST /user_file_mappings.json
  def create
    @user_file_mapping = UserFileMapping.new(user_file_mapping_params)

    respond_to do |format|
      if @user_file_mapping.save
        format.html { redirect_to @user_file_mapping, notice: 'User file mapping was successfully created.' }
        format.json { render :show, status: :created, location: @user_file_mapping }
      else
        format.html { render :new }
        format.json { render json: @user_file_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_file_mappings/1
  # PATCH/PUT /user_file_mappings/1.json
  def update
    respond_to do |format|
      if @user_file_mapping.update(user_file_mapping_params)
        format.html { redirect_to @user_file_mapping, notice: 'User file mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_file_mapping }
      else
        format.html { render :edit }
        format.json { render json: @user_file_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_file_mappings/1
  # DELETE /user_file_mappings/1.json
  def destroy
    @user_file_mapping.destroy
    respond_to do |format|
      format.html { redirect_to user_file_mappings_url, notice: 'User file mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_file_mapping
      @user_file_mapping = UserFileMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_file_mapping_params
      params.require(:user_file_mapping).permit(:file_id, :user_id, :file_name)
    end
end
