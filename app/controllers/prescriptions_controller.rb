class PrescriptionsController < ApplicationController


    def index
      @prescriptions = Prescription.all
    end

    def show
      @prescription = Prescription.find(params[:id])
    end

    def new
      @prescription = Prescription.new
      @prescription.active = true
    end

    def edit
    end

    def create
      @prescription = Prescription.new(prescription_params)

      @prescription.save
      redirect_to @prescription
    end

    def update
    end

    def destroy
    end

    private

    def prescription_params
      params.require(:prescription).permit(:name, :dosage, :purpose)
    end

end
