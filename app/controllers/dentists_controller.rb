class DentistsController < ApplicationController
  before_action :set_dentist, only: [:show, :edit, :update, :destroy]

  def index
    @dentists = Dentist.all
  end

  def show
  end

  def new
    @dentist = Dentist.new
  end

  def create
    @dentist = Dentist.new(dentist_params)
    if @dentist.save
      redirect_to @dentist, notice: 'Dentist was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dentist.update(dentist_params)
      redirect_to @dentist, notice: 'Dentist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dentist.destroy
    redirect_to dentists_url, notice: 'Dentist was successfully destroyed.'
  end

  def search
    nome = params[:nome]
    cro = params[:cro]

    query = Dentist.all
    query = query.where('nome LIKE ?', "%#{nome}%") if nome.present?
    query = query.where('cro LIKE ?', "%#{cro}%") if cro.present?

    @dentists = query
  end

  private

  def set_dentist
    @dentist = Dentist.find(params[:id])
  end

  def dentist_params
    params.require(:dentist).permit(:nome, :especializacao, :disponivel_segunda, :disponivel_terca, :disponivel_quarta, :disponivel_quinta, :disponivel_sexta, :disponivel_sabado, :disponivel_domingo, :cro, :horario_chegada, :horario_saida, :contato, :email)
  end
end
