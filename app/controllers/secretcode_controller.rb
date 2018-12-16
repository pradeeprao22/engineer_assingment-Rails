class SecretcodeController < ApplicationController
    
  def index
     @secretcodes = Secretcode.all
  end

  def new
   @secretcode = Secretcode.new
  end

  def create
     @secretcode = Secretcode.new(secretcode_params)
     if @secretcode.save
        flash[:success] = "Secret Code Created Succesfully"
        redirect_to @secretcode
     else
        render 'index'
     end
  end

  def secretcode_params
     params.require(:secretcode).permit(:code)
  end

end