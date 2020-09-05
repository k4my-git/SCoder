class CodesController < ApplicationController
  def index
  	@codes = Code.all
  end

  def show
    @code = Code.find(params[:id])
  end

  def new
  	@new_code = Code.new
  end

  def create
    if params[:code].blank?
      flash[:error] = 'fileを指定してください.'
      redirect_to :back
      return
    else
      @new_code = Code.new(code_params)
      @new_code.file = params[:code][:file].read
      @new_code.filename = params[:code][:file].original_filename
      if @new_code.save
        flash[:notice] = "Uploadに成功しました。"
        redirect_to code_path(@new_code)
      else
        render action: 'new'
      end
    end
  end

  def edit
  end

  def update
  end

  private
  def code_params
  	params.require(:code).permit(:code_name, :codes_explanation, :language, :file, :filename)
  end
end
