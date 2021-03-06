class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render 'new'
    end
  end

  def update
    if @patient.update(patient_params)
      redirect_to @patient
    else
      render 'edit'
    end
  end

  def destroy
    @patient.destroy
   
    redirect_to patients_path
  end

  private

  def set_patient
    @patient = Patient.find_by(id: params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :last_name, :run, :birth_date)
  end
end
