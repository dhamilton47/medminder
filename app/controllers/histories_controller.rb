class HistoriesController < ApplicationController


  def index
  end

  def show
    @history = History.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @history = History.new(history_params)

    @history.save
    redirect_to @history
  end

  def update
  end

  def destroy
  end

  private

  def history_params
    params.require(:history).permit(:name, :dosage, :purpose)
  end

end
