class HowsController < ApplicationController
  ## You can see old commented out code, that dry's up doing so many
  ## finds within each method, the before_filter replaces these lines!
  
  before_filter :find_how, :only => [:show,
  :edit,
  :update,
  :destroy]

  ##
  def index
  end
  
  def new
   @how = How.new
  end
  
  def create
    @how = How.new(params[:how])
    if @how.save
      flash[:notice] = "How instructions have been saved woot in create of controller"
      redirect_to @how
    else
      #lbe added pg 106 (was empty until now!)
      flash[:alert] = "The How To instruction was not created"
      render :action => :new # lbe - trying out use of symbol instead of text
    end
  end
  
  def show
    #@how = How.find(params[:id])
  end

  # lbe, this step addition is considered the R in CRUD
  def index
    @hows = How.all
  end

  def edit
    #@how = How.find(params[:id])
  end
  
  def update
    #@how = How.find(params[:id])
    if @how.update_attributes(params[:how])
      flash[:notice] = "How To instruction has been updated"
      redirect_to @how
    else
      flash[:alert] = "How To instruction has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    #@how = How.find(params[:id])
    @how.destroy
    flash[:notice] = "How To has been deleted."
    redirect_to hows_path
  end
  
  private
    def find_how
      @how = How.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The How To instructions you were looking for could not be found."
      redirect_to hows_path
    end
  

end # end of model class