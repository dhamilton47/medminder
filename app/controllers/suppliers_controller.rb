class SuppliersController < ApplicationController


  def index
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)

    @supplier.save
    redirect_to @supplier
  end

  def update
  end

  def destroy
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :phone, :email)
  end

end
