class VisitorsController < ApplicationController
  
  def new
    @visitor = Visitor.new
  end
  
  def create
    @visitor = Visitor.new(secure)
    if @visitor.valid?
      @visitor.subscribe
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
   def secure
     params.require(:visitor).permit(:email)
   end
end