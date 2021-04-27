class VaccinationsController < ApplicationController
  def create
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.present?
      if @vaccination = @patient.vaccinations.create(vaccination_params)
        redirect_to patient_path @patient
      else
        render 'patients/show'
      end
    else
      redirect_to patients_path
    end
  end
 
  private
    def vaccination_params
      params.require(:vaccination).permit(:first_dose, :appointment_date)
    end
end
