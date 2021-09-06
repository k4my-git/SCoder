class CodesController < ApplicationController
  def index
  	@codes = Code.all
  end

  def show
    @user = User.find(params[:id])
    @code = Code.find(params[:id])
    @post_comment = PostComment.new
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
      @new_code.user_id = current_user.id
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
    @code = Code.find(params[:id])
  end

  def update
    @code = Code.find(params[:id])
    @code.file = params[:code][:file].read
    @code.filename = params[:code][:file].original_filename
    if @code.save
      flash[:notice] = "successfully"
      redirect_to code_path(@code)
    else
      render :edit
    end
  end

  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    redirect_to codes_path
  end

  private
  def code_params
  	params.require(:code).permit(:code_name, :codes_explanation, :language, :file, :filename)
  end
end
