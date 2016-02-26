class CastsController < ApplicationController
  def new
  	@cast =Cast.new
  end

  def create
  	@cast = Cast.new(casts_params)
  	if @cast.save
  		render :text => "Record Saved Successfully"
  end
end
 
 private

  def casts_params
  	params.require(:cast).permit(:name,:role)
end
end
