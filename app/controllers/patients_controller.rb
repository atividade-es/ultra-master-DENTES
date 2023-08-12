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
    @patient.destroy
    redirect_to root_path, status: :see_other
  end

  def search
    name = params[:name]
    cpf = params[:cpf]

    if name.present? && cpf.present?
      @patients = Patient.where('name LIKE ? AND cpf LIKE ?', "%#{name}%", "%#{cpf}%")
    elsif name.present?
      @patients = Patient.where('name LIKE ?', "%#{name}%")
    elsif cpf.present?
      @patients = Patient.where('cpf LIKE ?', "%#{cpf}%")
    else
      @patients = Patient.all
    end
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :email, :cpf, :contato, :data_nascimento, :genero, :endereco)
  end
end