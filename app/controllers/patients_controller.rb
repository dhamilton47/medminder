class PatientsController < ApplicationController


    def index
      @patients = Patient.all
    end

    def show
      @patient = Patient.find(params[:id])
    end

    def new
    end

    def edit
    end

    def create
      @patient = Patient.new(patient_params)

      @patient.save
      redirect_to @patient
    end

    def update
    end

    def destroy
    end

    private

    def patient_params
      params.require(:patient).permit(:name)
    end

end
