class FileInfosController < ApplicationController
  before_action :set_file_info, only: [:show, :edit, :update, :destroy]

  # GET /file_infos
  # GET /file_infos.json
  def index
    @file_infos = FileInfo.all
  end

  # GET /file_infos/1
  # GET /file_infos/1.json
  def show
  end

  # GET /file_infos/new
  def new
    @file_info = FileInfo.new
  end

  # GET /file_infos/1/edit
  def edit
  end

  # POST /file_infos
  # POST /file_infos.json
  def create
    i = 0 
    
    # Diffy::Diff.new("Hello how are you\nI'm fine\nThat's great\n", "I'm fine\nThat's swell\n").each do |line|
    #   case line
    #   when /^\+/ then puts "line #{i} #{line.chomp} added"
    #   when /^-/ then puts "line #{i} #{line.chomp} removed"
    #   end 
    #   i = i + 1
    # end
    # a = Diffy::Diff.new('/Users/jagan/Downloads/f1.txt', '/Users/jagan/Downloads/f2.txt', :source => 'files').each_chunk.to_a
    # puts a.inspect
    #s1 = "The red dog jumped over the hill, followed by the crazy clown."
    s2 = "The green fox jumped over the mill, followed by the crazy clown. I am here you clowns!!!"
    s3 = "The green fox jumped over the mill, followed by the crazy clown. I am here you""
    
    s2_d_s1 = Fossilize.create(s2, "The red dog jumped over the hill, followed by the crazy clown.")
    puts s2_d_s1

    puts "Hereeee!!!"
    puts Fossilize.apply(s2,s2_d_s1)



    @file_info = FileInfo.new(file_info_params)

    respond_to do |format|
      if @file_info.save
        format.html { redirect_to @file_info, notice: 'File info was successfully created.' }
        format.json { render :show, status: :created, location: @file_info }
      else
        format.html { render :new }
        format.json { render json: @file_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_infos/1
  # PATCH/PUT /file_infos/1.json
  def update
    respond_to do |format|
      if @file_info.update(file_info_params)
        format.html { redirect_to @file_info, notice: 'File info was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_info }
      else
        format.html { render :edit }
        format.json { render json: @file_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_infos/1
  # DELETE /file_infos/1.json
  def destroy
    @file_info.destroy
    respond_to do |format|
      format.html { redirect_to file_infos_url, notice: 'File info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_info
      @file_info = FileInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_info_params
      params.require(:file_info).permit(:path, :checksum, :redundant_count, :parent_id)
    end
end
