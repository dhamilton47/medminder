class ActivesController < ApplicationController


  def index
    @actives = Active.all
  end

  def show
    @active = Active.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @active = Active.new(active_params)

    @active.save
    redirect_to @active
  end

  def update
  end

  def destroy
  end

  private

  def active_params
    params.require(:active).permit(:name, :dosage, :purpose)
  end

end
