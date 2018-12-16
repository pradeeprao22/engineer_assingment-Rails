class CodesController < ApplicationController

  helper_method :generate_uuid
  before_action :set_code, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def generate_uuid
    p SecureRandom.hex(5)
  end

  def index
    @codes = Code.all
  end

  def show

  end

  def new
    @code = Code.new
  end

  def edit

  end
 
  def create
    @code = Code.new(code_params)

    respond_to do |format|
      if @code.save
        format.html { redirect_to @code, notice: 'Code was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def set_code
      @code = Code.find(params[:id])
  end

  def code_params
      params.require(:code).permit(:secretcode, :uuid)
  end
end