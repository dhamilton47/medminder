class ProvidersController < ApplicationController


  def index
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @provider = Provider.new(provider_params)

    @provider.save
    redirect_to @provider
  end

  def update
  end

  def destroy
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :phone, :email)
  end

end
