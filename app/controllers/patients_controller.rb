class PatientsController < ApplicationController
  def index
    @patient = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to @patient
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def destroy
    @patient = Patient.find(params[:id])
    begin
      @patient.destroy
      redirect_to patients_url, status: :see_other, notice: 'Paciente excluido com sucesso.'
    rescue ActiveRecord::InvalidForeignKey
      flash[:alert] = "Este paciente não pode ser excluído porque está relacionado a outros registros."
      redirect_to patients_url
    end
  end

  def search
    name = params[:name]
    cpf = params[:cpf]

    query = Patient.all
    query = query.where('name LIKE ?', "%#{name}%") if name.present?
    query = query.where('cpf LIKE ?', "%#{cpf}%") if cpf.present?

    @patients = query
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :email, :cpf, :contato, :data_nascimento, :genero, :endereco)
  end
end