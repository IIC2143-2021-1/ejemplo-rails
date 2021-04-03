class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by(id: params[:id])
  end

  def new
    @patient = Patient.new
  end

  
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render 'new'
    end
  end
  
  def edit
    @patient = Patient.find_by(id: params[:id])
  end

  def update
    @patient = Patient.find_by(id: params[:id])
    if @patient.update(patient_params)
      redirect_to @patient
    else
      render 'edit'
    end
  end

  def destroy
    @patient = Patient.find_by(id: params[:id])
    @patient.destroy
   
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :last_name, :run, :birth_date)
  end
end
